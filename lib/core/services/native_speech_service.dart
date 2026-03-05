import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:permission_handler/permission_handler.dart';

class NativeSpeechService {
  final stt.SpeechToText _speech = stt.SpeechToText();
  bool _isInitialized = false;

  bool get isListening => _speech.isListening;

  Future<bool> initialize() async {
    if (_isInitialized) return true;
    try {
      _isInitialized = await _speech.initialize(
        onStatus: (status) => debugPrint('NativeSpeech: onStatus: $status'),
        onError: (errorNotification) =>
            debugPrint('NativeSpeech: onError: $errorNotification'),
      );
      return _isInitialized;
    } catch (e) {
      debugPrint("NativeSpeech: Error initializing: $e");
      return false;
    }
  }

  Future<bool> startListening({
    required Function(String text, bool isFinal) onResult,
  }) async {
    // Request Microphone and Speech permissions via permission_handler on mobile
    // Note: On web, kIsWeb is true so this block is skipped entirely.
    // The browser handles mic permissions via the Web Speech API / getUserMedia.
    if (!kIsWeb) {
      try {
        if (Platform.isAndroid || Platform.isIOS) {
          final micStatus = await Permission.microphone.request();
          if (micStatus != PermissionStatus.granted) {
            debugPrint("NativeSpeech: Microphone permission was denied.");
            return false;
          }

          final speechStatus = await Permission.speech.request();
          if (speechStatus != PermissionStatus.granted) {
            debugPrint(
              "NativeSpeech: Speech recognition permission was denied.",
            );
            return false;
          }
        }
      } catch (e) {
        debugPrint("NativeSpeech: Permission check error (desktop?): $e");
      }
    }

    final ready = await initialize();
    if (!ready) {
      debugPrint("NativeSpeech: Speech recognition not available or denied.");
      // Log available locales for diagnostics
      try {
        final locales = await _speech.locales();
        debugPrint(
          "NativeSpeech: Available locales: ${locales.map((l) => l.localeId).toList()}",
        );
      } catch (e) {
        debugPrint("NativeSpeech: Could not list locales: $e");
      }
      return false;
    }

    if (_speech.isListening) {
      return true;
    }

    debugPrint("NativeSpeech: Starting to listen...");
    await _speech.listen(
      onResult: (result) {
        onResult(result.recognizedWords, result.finalResult);
      },
      // Note: On iOS, transcription usually stops automatically after ~1 minute by Apple policy.
      // On macOS/Windows this varies. We use dictation mode for longest possible session.
      listenMode: stt.ListenMode.dictation,
      cancelOnError: false,
      partialResults: true,
    );
    return true;
  }

  Future<void> stopListening() async {
    if (_speech.isListening) {
      debugPrint("NativeSpeech: Stopping listening manually.");
      await _speech.stop();
    }
  }

  void cancelListening() async {
    if (_speech.isListening) {
      await _speech.cancel();
    }
  }
}
