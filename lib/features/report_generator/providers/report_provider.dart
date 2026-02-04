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
  String? _sessionId; // Current Session ID

  // Getters
  int get currentStepIndex => _currentStepIndex;
  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;
  AudioFileModel? get audioFile => _audioFile;
  TranscriptionModel? get transcription => _transcription;
  ConversationAnalysisModel? get analysis => _analysis;
  ReportJsonModel? get reportJson => _reportJson;
  PdfReportModel? get pdfReport => _pdfReport;
  String? get sessionId => _sessionId;

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

  bool _isPaused = false;
  bool _isStopping = false;

  void pauseGeneration() {
    _isPaused = true;
    _setLoading(false);
    notifyListeners();
  }

  void stopGeneration() {
    _isStopping = true;
    _setLoading(false);
    _isPaused = false; // Reset pause if stopping
    notifyListeners();
  }

  Future<void> continueGeneration() async {
    if (_audioFile == null && _currentStepIndex == 0) {
      _setError("No audio file selected.");
      return;
    }

    _errorMessage = null;
    _isPaused = false;
    _isStopping = false;

    try {
      // Initialize Session if not already done
      if (_sessionId == null) {
        _sessionId = await _firebaseService.createSessionId();
        await _firebaseService.createSession(_sessionId!, "user_123");
        notifyListeners();
      }

      // Loop through steps based on current index
      // Step 0 -> 1: Transcribe
      if (_currentStepIndex < 1) {
        if (_checkStopOrPause()) return;
        await _transcribeAudio();
        if (_transcription == null) throw Exception("Transcription failed.");
      }

      // Step 1 -> 2: Analyze
      if (_currentStepIndex < 2) {
        if (_checkStopOrPause()) return;
        await _analyzeConversation();
        if (_analysis == null) throw Exception("Analysis failed.");
      }

      // Step 2 -> 3: Generate JSON
      if (_currentStepIndex < 3) {
        if (_checkStopOrPause()) return;
        await _generateReportJson();
        if (_reportJson == null) throw Exception("Report generation failed.");
      }

      // Step 3 -> 4: Generate PDF
      if (_currentStepIndex < 4) {
        if (_checkStopOrPause()) return;
        await _generatePdf();
      }
    } catch (e) {
      _setError(e.toString());
    } finally {
      // Ensure loading is off if we finish or error out, unless we paused (already handled)
      if (!_isPaused) {
        _setLoading(false);
      }
    }
  }

  bool _checkStopOrPause() {
    if (_isStopping) {
      _setLoading(false);
      return true;
    }
    if (_isPaused) {
      _setLoading(false);
      return true;
    }
    return false;
  }

  // Step 1
  Future<void> _transcribeAudio() async {
    _setStep(1);
    _setLoading(true);
    await _firebaseService.logProcessStep(
      "user_123",
      _sessionId,
      "Transcription",
      "Started",
    );
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

      // 3. Persist Session State
      if (_sessionId != null) {
        await _firebaseService.updateSessionState(_sessionId!, {
          'transcription': _transcription!.toJson(),
          'audioUrl': downloadUrl,
        });
      }

      await _firebaseService.logProcessStep(
        "user_123",
        _sessionId,
        "Transcription",
        "Completed",
      );
    } catch (e) {
      await _firebaseService.logProcessStep(
        "user_123",
        _sessionId,
        "Transcription",
        "Error",
        details: e.toString(),
      );
      rethrow;
    } finally {
      _setLoading(false);
    }
  }

  // Step 2
  Future<void> _analyzeConversation() async {
    _setStep(2);
    _setLoading(true);
    await _firebaseService.logProcessStep(
      "user_123",
      _sessionId,
      "Analysis",
      "Started",
    );
    try {
      _analysis = await _openAiService.analyzeConversation(
        _transcription!.transcription,
      );

      // Persist State
      if (_sessionId != null) {
        await _firebaseService.updateSessionState(_sessionId!, {
          'analysis': _analysis!.toJson(),
        });
      }

      await _firebaseService.logProcessStep(
        "user_123",
        _sessionId,
        "Analysis",
        "Completed",
      );
    } catch (e) {
      await _firebaseService.logProcessStep(
        "user_123",
        _sessionId,
        "Analysis",
        "Error",
        details: e.toString(),
      );
      rethrow;
    } finally {
      _setLoading(false);
    }
  }

  // Step 3
  Future<void> _generateReportJson() async {
    _setStep(3);
    _setLoading(true);
    await _firebaseService.logProcessStep(
      "user_123",
      _sessionId,
      "JSON Generation",
      "Started",
    );
    try {
      _reportJson = await _openAiService.generateReport(
        _transcription!.transcription,
        _analysis!,
      );

      // Persist State
      if (_sessionId != null) {
        await _firebaseService.updateSessionState(_sessionId!, {
          'reportJson': _reportJson!.toJson(),
        });
      }

      await _firebaseService.logProcessStep(
        "user_123",
        _sessionId,
        "JSON Generation",
        "Completed",
      );
    } catch (e) {
      await _firebaseService.logProcessStep(
        "user_123",
        _sessionId,
        "JSON Generation",
        "Error",
        details: e.toString(),
      );
      rethrow;
    } finally {
      _setLoading(false);
    }
  }

  // Step 4
  Future<void> _generatePdf() async {
    _setStep(4);
    _setLoading(true);
    await _firebaseService.logProcessStep(
      "user_123",
      _sessionId,
      "PDF Generation",
      "Started",
    );
    try {
      final result = await _pdfService.generateReportPdf(_reportJson!);

      // Upload PDF to Storage (optional for web since it handles download, but good for persistence)
      String downloadUrl = result.path;
      // Always upload to ensure persistence for history/web refresh
      downloadUrl = await _storageService.uploadPdfFile(
        "report_${DateTime.now().millisecondsSinceEpoch}.pdf",
        result.path,
        bytes: result.bytes, // Pass bytes if available (crucial for Web)
      );

      _pdfReport = PdfReportModel(
        filePath: result.path,
        downloadUrl: downloadUrl,
        isSigned: false,
        pdfBytes: result.bytes,
      );

      // Persist State
      if (_sessionId != null) {
        await _firebaseService.updateSessionState(_sessionId!, {
          'pdfReport': _pdfReport!.toJson(),
          'status': 'pdf_ready', // Explicit status
        });
      }

      await _firebaseService.logProcessStep(
        "user_123",
        _sessionId,
        "PDF Generation",
        "Completed",
      );
    } catch (e) {
      await _firebaseService.logProcessStep(
        "user_123",
        _sessionId,
        "PDF Generation",
        "Error",
        details: e.toString(),
      );
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
      final result = await _pdfService.generateReportPdfWithSignature(
        _reportJson!,
        "signature_path_placeholder",
      );

      String downloadUrl = result.path;
      // Always upload signed report
      downloadUrl = await _storageService.uploadPdfFile(
        "report_signed_${DateTime.now().millisecondsSinceEpoch}.pdf",
        result.path,
        bytes: result.bytes,
      );

      _pdfReport = PdfReportModel(
        filePath: result.path,
        downloadUrl: downloadUrl,
        isSigned: true,
        pdfBytes: result.bytes,
      );

      // Update Session
      if (_sessionId != null) {
        await _firebaseService.updateSessionState(_sessionId!, {
          'pdfReport': _pdfReport!.toJson(),
          'status': 'completed',
        });
      }

      await _firebaseService.logProcessStep(
        "user_123",
        _sessionId,
        "Signing",
        "Completed",
      );
    } catch (e) {
      await _firebaseService.logProcessStep(
        "user_123",
        _sessionId,
        "Signing",
        "Error",
        details: e.toString(),
      );
      rethrow;
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

  // --- Session: Load / Resume ---
  Future<void> loadSession(Map<String, dynamic> sessionData) async {
    _setLoading(true);
    try {
      _sessionId = sessionData['sessionId'];

      // Restore Transcription
      if (sessionData['transcription'] != null) {
        _transcription = TranscriptionModel.fromJson(
          sessionData['transcription'],
        );
        _currentStepIndex = 1; // At least transcribed
      }

      // Restore Analysis
      if (sessionData['analysis'] != null) {
        _analysis = ConversationAnalysisModel.fromJson(sessionData['analysis']);
        _currentStepIndex = 2; // At least analyzed
      }

      // Restore JSON
      if (sessionData['reportJson'] != null) {
        _reportJson = ReportJsonModel.fromJson(sessionData['reportJson']);
        _currentStepIndex = 3; // At least JSON generated
      }

      // Restore PDF
      if (sessionData['pdfReport'] != null) {
        _pdfReport = PdfReportModel.fromJson(sessionData['pdfReport']);
        _currentStepIndex = 4;
        if (_pdfReport!.isSigned) {
          _currentStepIndex = 5;
        }

        // Fix metadata for existing reports to ensure inline viewing
        if (_pdfReport!.downloadUrl != null) {
          _storageService.updatePdfMetadata(_pdfReport!.downloadUrl!);
        }
      }

      notifyListeners();
    } catch (e) {
      _setError("Failed to load session: $e");
    } finally {
      _setLoading(false);
    }
  }
}
