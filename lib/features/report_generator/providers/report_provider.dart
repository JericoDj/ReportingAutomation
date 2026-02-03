import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:reportautomation/core/services/deepgram_service.dart';
import 'package:reportautomation/core/services/openai_service.dart';
import 'package:reportautomation/core/services/firebase_service.dart';
import 'package:reportautomation/core/services/storage_service.dart';
import 'package:reportautomation/core/services/pdf_service.dart';
import 'package:reportautomation/features/report_generator/models/audio_file_model.dart';
import 'package:reportautomation/features/report_generator/models/transcription_model.dart';
import 'package:reportautomation/features/report_generator/models/conversation_analysis_model.dart';
import 'package:reportautomation/features/report_generator/models/report_json_model.dart';
import 'package:reportautomation/features/report_generator/models/pdf_report_model.dart';

class ReportProvider extends ChangeNotifier {
  // Services
  final _deepgramService = DeepgramService();
  final _openAiService = OpenAIService();
  final _firebaseService = FirebaseService();
  final _storageService = StorageService();
  final _pdfService = PdfService();

  // State
  int _currentStepIndex =
      0; // 0: Upload, 1: Transcribe, 2: Analyze, 3: Report, 4: PDF, 5: Sign
  bool _isLoading = false;
  String? _errorMessage;

  AudioFileModel? _audioFile;
  String? _remoteAudioUrl; // Track selected remote URL
  TranscriptionModel? _transcription;
  ConversationAnalysisModel? _analysis;
  ReportJsonModel? _reportJson;
  PdfReportModel? _pdfReport;

  // Getters
  int get currentStepIndex => _currentStepIndex;
  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;
  AudioFileModel? get audioFile => _audioFile;
  TranscriptionModel? get transcription => _transcription;
  ConversationAnalysisModel? get analysis => _analysis;
  ReportJsonModel? get reportJson => _reportJson;
  PdfReportModel? get pdfReport => _pdfReport;

  // STEP 0: Upload Audio (File Selection)
  Future<void> pickAudioFile() async {
    try {
      _setLoading(true);
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['mp3', 'wav', 'm4a', 'flac'],
        withData: true,
      );

      if (result != null) {
        final platformFile = result.files.single;
        // On web, path might be null, use bytes. On mobile/desktop, use path.
        _audioFile = AudioFileModel(
          name: platformFile.name,
          path: platformFile.path ?? '', // Check if path is needed for pure IO
          size: platformFile.size,
          bytes: platformFile.bytes,
        );
        _errorMessage = null;
        _remoteAudioUrl = null; // Clear remote selection
        notifyListeners();
      }
    } catch (e) {
      _setError("File picking failed: $e");
    } finally {
      _setLoading(false);
    }
  }

  // Pick Remote Audio (From Storage)
  void selectRemoteAudio(String url, String name) {
    _remoteAudioUrl = url;
    _audioFile = AudioFileModel(
      name: name,
      path: '', // Not used for remote files
      size: 0, // Unknown, not critical
    );
    _errorMessage = null;
    notifyListeners();
  }

  // Orchestrator: Generate Report
  // This function drives the entire sequence or can be broken down if user wants step-by-step
  // For "User clicks Generate Report", we assume it runs the automated pipeline.
  Future<void> startGenerationPipeline() async {
    if (_audioFile == null) {
      _setError("No audio file selected.");
      return;
    }

    _errorMessage = null;

    try {
      // Step 1: Transcribe
      await _transcribeAudio();
      if (_transcription == null) throw Exception("Transcription failed.");

      // Step 2: Analyze
      await _analyzeConversation();
      if (_analysis == null) throw Exception("Analysis failed.");

      // Step 3: Generate JSON
      await _generateReportJson();
      if (_reportJson == null) throw Exception("Report generation failed.");

      // Step 4: Generate PDF
      await _generatePdf();
    } catch (e) {
      _setError(e.toString());
    }
  }

  // Step 1
  Future<void> _transcribeAudio() async {
    _setStep(1);
    _setLoading(true);
    try {
      // 1. Upload to Storage (Skip if remote)
      String downloadUrl;
      if (_remoteAudioUrl != null) {
        downloadUrl = _remoteAudioUrl!;
      } else {
        downloadUrl = await _storageService.uploadAudioFile(
          _audioFile!.name,
          _audioFile!.path,
          bytes: _audioFile!.bytes,
        );
      }

      // 2. Transcribe
      _transcription = await _deepgramService.transcribeAudio(downloadUrl);

      // 3. Save to Firestore (Mock user ID for now)
      await _firebaseService.saveTranscription(
        "user_123",
        _transcription!.transcription,
      );
    } catch (e) {
      rethrow;
    } finally {
      _setLoading(false);
    }
  }

  // Step 2
  Future<void> _analyzeConversation() async {
    _setStep(2);
    _setLoading(true);
    try {
      _analysis = await _openAiService.analyzeConversation(
        _transcription!.transcription,
      );
    } catch (e) {
      rethrow;
    } finally {
      _setLoading(false);
    }
  }

  // Step 3
  Future<void> _generateReportJson() async {
    _setStep(3);
    _setLoading(true);
    try {
      _reportJson = await _openAiService.generateReport(
        _transcription!.transcription,
        _analysis!,
      );
      // Save Report JSON
      await _firebaseService.saveReport("user_123", _reportJson!);
    } catch (e) {
      rethrow;
    } finally {
      _setLoading(false);
    }
  }

  // Step 4
  Future<void> _generatePdf() async {
    _setStep(4);
    _setLoading(true);
    try {
      final file = await _pdfService.generateReportPdf(_reportJson!);

      // Upload PDF to Storage
      final downloadUrl = await _storageService.uploadPdfFile(
        "report_${DateTime.now()}.pdf",
        file.path,
      );

      _pdfReport = PdfReportModel(
        filePath: file.path,
        downloadUrl: downloadUrl,
        isSigned: false,
      );
    } catch (e) {
      rethrow;
    } finally {
      _setLoading(false);
    }
  }

  // Step 5: Sign
  Future<void> signAndApprove() async {
    if (_pdfReport == null || _reportJson == null) return;

    _setStep(5);
    _setLoading(true);
    try {
      // "Overlay signature" logic via PDF Service
      // For now we assume we are using the 'signature' from storage or just marking it
      // Let's assume we re-generate with signature for simplicity in this demo scope
      final signedFile = await _pdfService.generateReportPdfWithSignature(
        _reportJson!,
        "signature_path_placeholder",
      );

      final downloadUrl = await _storageService.uploadPdfFile(
        "report_signed_${DateTime.now()}.pdf",
        signedFile.path,
      );

      _pdfReport = PdfReportModel(
        filePath: signedFile.path,
        downloadUrl: downloadUrl,
        isSigned: true,
      );

      // Mark as complete/Success
      _setStep(6); // 6 = Done? Or just stay at 5 (Signed)
    } catch (e) {
      _setError("Signing failed: $e");
    } finally {
      _setLoading(false);
    }
  }

  void _setStep(int step) {
    _currentStepIndex = step;
    notifyListeners();
  }

  void _setLoading(bool loading) {
    _isLoading = loading;
    notifyListeners();
  }

  void _setError(String message) {
    _errorMessage = message;
    notifyListeners();
  }
}
