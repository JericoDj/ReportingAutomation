import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:record/record.dart';
import 'package:reportautomation/core/services/openai_service.dart';
import 'package:reportautomation/core/services/gemini_service.dart';
import 'package:reportautomation/core/services/native_speech_service.dart';
import 'package:reportautomation/core/services/audio_recorder_service.dart';
import 'package:reportautomation/core/services/storage_service.dart';
import 'package:reportautomation/core/services/deepgram_service.dart';
import 'package:flutter_overlay_window/flutter_overlay_window.dart';
import 'package:go_router/go_router.dart';

class InterviewAnswerScreen extends StatefulWidget {
  const InterviewAnswerScreen({super.key});

  @override
  State<InterviewAnswerScreen> createState() => _InterviewAnswerScreenState();
}

class _InterviewAnswerScreenState extends State<InterviewAnswerScreen>
    with SingleTickerProviderStateMixin {
  final TextEditingController _transcriptController = TextEditingController();
  final OpenAIService _openAIService = OpenAIService();
  final GeminiService _geminiService = GeminiService();
  final AudioRecorderService _audioRecorderService = AudioRecorderService();
  final StorageService _storageService = StorageService();
  final DeepgramService _deepgramService = DeepgramService();
  final NativeSpeechService _nativeSpeechService = NativeSpeechService();

  String? _generatedAnswer;
  bool _isLoading = false;
  String? _error;
  bool _isSessionActive = false; // For REST recording session
  bool _isListening = false; // For dictation mic button
  String _selectedAiProvider = 'OpenAI';
  String _preListeningText = "";

  List<InputDevice> _devices = [];
  InputDevice? _selectedDevice;

  late AnimationController _pulseController;

  @override
  void initState() {
    super.initState();
    _pulseController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    )..repeat(reverse: true);
    _fetchDevices();
  }

  Future<void> _fetchDevices() async {
    try {
      final granted = await _audioRecorderService.requestPermission();
      if (granted) {
        final devices = await _audioRecorderService.listInputDevices();
        setState(() {
          _devices = devices;
          if (_devices.isNotEmpty) {
            _selectedDevice = _devices.first;
          }
        });
      } else {
        setState(
          () => _error =
              "Microphone permission denied. Please check your system settings.",
        );
      }
    } catch (e) {
      setState(
        () => _error =
            "Error loading audio devices: $e. Please check your microphone, system sound, or EqMac.",
      );
      debugPrint("Microphone/Device error: $e");
    }
  }

  @override
  void dispose() {
    _transcriptController.dispose();
    _audioRecorderService.dispose();
    _nativeSpeechService.cancelListening();
    _pulseController.dispose();
    super.dispose();
  }

  // ─── DICTATION (speech_to_text mic button) ───

  Future<void> _toggleListening() async {
    if (_isSessionActive) return; // Don't allow dictation during REST recording

    if (_isListening) {
      await _nativeSpeechService.stopListening();
      setState(() => _isListening = false);
    } else {
      setState(() => _error = null);

      try {
        final micGranted = await _audioRecorderService.requestPermission();
        if (!micGranted) {
          setState(() => _error = "Microphone permission is required.");
          return;
        }

        _preListeningText = _transcriptController.text.trim();

        final started = await _nativeSpeechService.startListening(
          onResult: (text, isFinal) {
            setState(() {
              if (_preListeningText.isNotEmpty) {
                _transcriptController.text = "$_preListeningText $text";
              } else {
                _transcriptController.text = text;
              }
              _transcriptController.selection = TextSelection.fromPosition(
                TextPosition(offset: _transcriptController.text.length),
              );
            });
            if (isFinal) {
              _preListeningText = _transcriptController.text.trim();
            }
          },
        );

        if (!started) {
          setState(() {
            _error =
                "Speech recognition is not available. Check System Settings → Privacy & Security → Speech Recognition. Also check if microphone, system sound, or EqMac is causing issues.";
          });
          return;
        }

        setState(() => _isListening = true);
      } catch (e) {
        setState(
          () => _error =
              "Microphone/Speech error: $e. Sudden error of microphone, system sound, or EqMac.",
        );
        debugPrint("Speech error: $e");
      }
    }
  }

  // ─── REST RECORDING SESSION ───

  Future<void> _toggleRecordingSession() async {
    if (_isLoading) return;
    if (_isListening) return; // Don't allow REST during dictation

    if (_isSessionActive) {
      // --- STOP RECORDING ---
      setState(() {
        _isLoading = true;
        _error = null;
      });

      debugPrint("UI: Stopping session recording...");
      final path = await _audioRecorderService.stopRecording();
      debugPrint("UI: Recording stopped, path: $path");

      setState(() => _isSessionActive = false);

      if (path != null) {
        await _processAudioFile(path);
      } else {
        setState(() {
          _isLoading = false;
          _error = "Could not retrieve the recording path.";
        });
      }

      if (!kIsWeb && Platform.isAndroid) {
        try {
          await FlutterOverlayWindow.closeOverlay();
        } catch (e) {
          debugPrint("Failed to close overlay: $e");
        }
      }
    } else {
      // --- START RECORDING ---
      setState(() => _error = null);

      try {
        final micGranted = await _audioRecorderService.requestPermission();
        if (!micGranted) {
          setState(() => _error = "Microphone permission is required.");
          return;
        }

        // Android overlay
        if (!kIsWeb && Platform.isAndroid) {
          try {
            final bool? isOverlayGranted =
                await FlutterOverlayWindow.isPermissionGranted();
            if (isOverlayGranted != true) {
              await FlutterOverlayWindow.requestPermission();
            }
          } catch (e) {
            debugPrint("Overlay permission check failed: $e");
          }
        }

        setState(() {
          _transcriptController.clear();
          _isSessionActive = true;
          _error = null;
        });

        final started = await _audioRecorderService.startRecording(
          device: _selectedDevice,
        );
        if (!started) {
          setState(() {
            _isSessionActive = false;
            _error =
                "Failed to start recording. Please check your system audio, external microphone, or EqMac software.";
          });
          return;
        }

        // Android overlay
        if (!kIsWeb && Platform.isAndroid) {
          try {
            await FlutterOverlayWindow.showOverlay(
              enableDrag: true,
              overlayTitle: "Interview Assistant",
              overlayContent: "Interview Assistant Active",
              flag: OverlayFlag.defaultFlag,
              visibility: NotificationVisibility.visibilityPublic,
              positionGravity: PositionGravity.auto,
              height: 350,
              width: WindowSize.matchParent,
            );
          } catch (e) {
            debugPrint("Could not show overlay: $e");
          }
        }
      } catch (e) {
        setState(
          () => _error =
              "Recording Error: $e. Sudden failure from microphone, system sound, or EqMac disconnection.",
        );
        debugPrint("Recording Error: $e");
      }
    }
  }

  Future<void> _processAudioFile(String path) async {
    setState(() {
      _isLoading = true;
      _error = null;
      _generatedAnswer = null;
    });

    try {
      final file = File(path);
      if (!file.existsSync()) {
        setState(() {
          _error =
              "Recording failed: The audio file was not generated. Try selecting a different input device or check if EqMac/system sound failed.";
        });
        return;
      }

      final fileName = path.split('/').last;
      final downloadUrl = await _storageService.uploadAudioFile(fileName, path);
      final transcriptModel = await _deepgramService.transcribeAudio(
        downloadUrl,
      );
      final transcriptionText = transcriptModel.transcription;

      if (transcriptionText.isEmpty) {
        setState(() => _error = "No speech detected in the recording.");
        return;
      }

      _transcriptController.text = transcriptionText;

      final answer = _selectedAiProvider == 'Gemini'
          ? await _geminiService.generateInterviewAnswer(transcriptionText)
          : await _openAIService.generateInterviewAnswer(transcriptionText);

      setState(() => _generatedAnswer = answer);
    } catch (e) {
      setState(() => _error = "Error processing audio: $e");
    } finally {
      setState(() => _isLoading = false);
    }
  }

  // ─── GENERATE AI ANSWER ───

  Future<void> _generateAnswer() async {
    final text = _transcriptController.text.trim();
    if (text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please enter or dictate a question first.'),
        ),
      );
      return;
    }

    if (_isListening) {
      await _nativeSpeechService.stopListening();
      setState(() => _isListening = false);
    }

    setState(() {
      _isLoading = true;
      _error = null;
      _generatedAnswer = null;
    });

    try {
      final answer = _selectedAiProvider == 'Gemini'
          ? await _geminiService.generateInterviewAnswer(text)
          : await _openAIService.generateInterviewAnswer(text);
      setState(() => _generatedAnswer = answer);

      if (_isSessionActive && !kIsWeb && Platform.isAndroid) {
        try {
          FlutterOverlayWindow.shareData(answer);
        } catch (e) {
          debugPrint("Failed to share data to overlay: $e");
        }
      }
    } catch (e) {
      setState(() => _error = e.toString());
    } finally {
      setState(() => _isLoading = false);
    }
  }

  // ─── BUILD ───

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.go('/'),
        ),
        title: const Text('Interview Assistant'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // ─── SHARED SETTINGS ───
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 20,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Settings",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: _buildDropdown(
                          label: "AI Provider",
                          color: Colors.black54,
                          borderColor: Colors.grey.shade300,
                          child: DropdownButton<String>(
                            isExpanded: true,
                            value: _selectedAiProvider,
                            items: ['OpenAI', 'Gemini'].map((p) {
                              return DropdownMenuItem(value: p, child: Text(p));
                            }).toList(),
                            onChanged: (_isSessionActive || _isListening)
                                ? null
                                : (p) {
                                    if (p != null) {
                                      setState(() => _selectedAiProvider = p);
                                    }
                                  },
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: _buildDropdown(
                          label: "Input Device",
                          color: Colors.black54,
                          borderColor: Colors.grey.shade300,
                          child: _devices.isNotEmpty
                              ? DropdownButton<InputDevice>(
                                  isExpanded: true,
                                  value: _selectedDevice,
                                  items: _devices.map((d) {
                                    return DropdownMenuItem(
                                      value: d,
                                      child: Text(
                                        d.label.isEmpty
                                            ? 'Unknown Device'
                                            : d.label,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    );
                                  }).toList(),
                                  onChanged: (_isSessionActive || _isListening)
                                      ? null
                                      : (d) =>
                                            setState(() => _selectedDevice = d),
                                )
                              : Row(
                                  children: [
                                    const Expanded(
                                      child: Text(
                                        'No devices found',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                    IconButton(
                                      icon: const Icon(Icons.refresh, size: 20),
                                      onPressed: _fetchDevices,
                                      tooltip: 'Refresh devices',
                                    ),
                                  ],
                                ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // ─── RECORDING SESSION CARD ───
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: _isSessionActive
                    ? Colors.red.shade50
                    : Colors.blue.shade50,
                borderRadius: BorderRadius.circular(24),
                border: Border.all(
                  color: _isSessionActive
                      ? Colors.red.shade200
                      : Colors.blue.shade200,
                  width: 2,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 20,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        _isSessionActive
                            ? Icons.stop_circle
                            : Icons.fiber_manual_record,
                        color: _isSessionActive ? Colors.red : Colors.blue,
                        size: 28,
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          "Record & Transcribe",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: _isSessionActive
                                ? Colors.red.shade800
                                : Colors.blue.shade800,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    _isSessionActive
                        ? "Recording in progress. Tap STOP to transcribe."
                        : "Record audio, then automatically transcribe and generate an AI answer.",
                    style: TextStyle(
                      color: _isSessionActive
                          ? Colors.red.shade700
                          : Colors.blue.shade700,
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: _isLoading ? null : _toggleRecordingSession,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: _isSessionActive
                            ? Colors.red
                            : Colors.blue,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: _isLoading && _isSessionActive
                          ? const SizedBox(
                              height: 20,
                              width: 20,
                              child: CircularProgressIndicator(
                                color: Colors.white,
                                strokeWidth: 2,
                              ),
                            )
                          : Text(
                              _isSessionActive
                                  ? "STOP & TRANSCRIBE"
                                  : "START RECORDING",
                            ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // ─── DICTATION / TYPE CARD ───
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 20,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Type or Dictate",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    "Type your question, or tap the mic to dictate.",
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(height: 16),

                  // Text field with mic button
                  Stack(
                    alignment: Alignment.topRight,
                    children: [
                      TextField(
                        controller: _transcriptController,
                        maxLines: 5,
                        decoration: InputDecoration(
                          hintText: _isListening
                              ? "Listening..."
                              : "e.g., What are your biggest weaknesses?",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: BorderSide(
                              color: _isListening
                                  ? Colors.red.shade300
                                  : Colors.grey.shade300,
                              width: _isListening ? 2 : 1,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: BorderSide(
                              color: _isListening
                                  ? Colors.red.shade300
                                  : Colors.grey.shade300,
                              width: _isListening ? 2 : 1,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: BorderSide(
                              color: _isListening
                                  ? Colors.red.shade400
                                  : Colors.blue.shade400,
                              width: 2,
                            ),
                          ),
                          filled: true,
                          fillColor: _isListening
                              ? Colors.red.shade50
                              : Colors.grey.shade50,
                          contentPadding: const EdgeInsets.fromLTRB(
                            16,
                            16,
                            56,
                            16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: _buildMicButton(),
                      ),
                    ],
                  ),

                  if (_isListening)
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Row(
                        children: [
                          AnimatedBuilder(
                            animation: _pulseController,
                            builder: (context, child) {
                              return Icon(
                                Icons.circle,
                                size: 10,
                                color: Colors.red.withOpacity(
                                  0.4 + _pulseController.value * 0.6,
                                ),
                              );
                            },
                          ),
                          const SizedBox(width: 8),
                          Text(
                            "Listening… Tap mic to stop.",
                            style: TextStyle(
                              color: Colors.red.shade600,
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),

                  const SizedBox(height: 20),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: _isLoading ? null : _generateAnswer,
                      icon: _isLoading
                          ? const SizedBox(
                              width: 20,
                              height: 20,
                              child: CircularProgressIndicator(
                                color: Colors.white,
                                strokeWidth: 2,
                              ),
                            )
                          : const Icon(Icons.bolt),
                      label: Text(
                        _isLoading ? "GENERATING..." : "GENERATE ANSWER",
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green.shade600,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // Error
            if (_error != null)
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.red.shade50,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.red.shade200),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.error_outline, color: Colors.red),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        _error!,
                        style: TextStyle(color: Colors.red.shade800),
                      ),
                    ),
                  ],
                ),
              ),

            // AI Answer
            if (_generatedAnswer != null)
              Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 20,
                      offset: const Offset(0, 10),
                    ),
                  ],
                  border: Border.all(color: Colors.green.shade100, width: 2),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.auto_awesome, color: Colors.green.shade600),
                        const SizedBox(width: 8),
                        const Text(
                          "AI Suggestion",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const Divider(height: 24),
                    SelectableText(
                      _generatedAnswer!,
                      style: const TextStyle(fontSize: 16, height: 1.5),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }

  // ─── HELPER WIDGETS ───

  Widget _buildDropdown({
    required String label,
    required Color color,
    required Color borderColor,
    required Widget child,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontWeight: FontWeight.bold, color: color),
        ),
        const SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: borderColor),
          ),
          child: DropdownButtonHideUnderline(child: child),
        ),
      ],
    );
  }

  Widget _buildMicButton() {
    if (_isListening) {
      return AnimatedBuilder(
        animation: _pulseController,
        builder: (context, child) {
          final scale = 1.0 + _pulseController.value * 0.15;
          return Transform.scale(
            scale: scale,
            child: Material(
              color: Colors.red,
              shape: const CircleBorder(),
              elevation: 4,
              child: InkWell(
                customBorder: const CircleBorder(),
                onTap: _toggleListening,
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Icon(Icons.stop, color: Colors.white, size: 22),
                ),
              ),
            ),
          );
        },
      );
    }

    return Material(
      color: Colors.blue.shade600,
      shape: const CircleBorder(),
      elevation: 2,
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: _isSessionActive ? null : _toggleListening,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Icon(
            Icons.mic,
            color: _isSessionActive ? Colors.white38 : Colors.white,
            size: 22,
          ),
        ),
      ),
    );
  }
}
