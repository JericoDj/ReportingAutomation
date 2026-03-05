import 'dart:typed_data';
import 'package:record/record.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter/foundation.dart';
import 'package:reportautomation/core/utils/platform_helper.dart';

// Conditional import for path_provider (needs dart:io on native)
import 'audio_recorder_service_native.dart'
    if (dart.library.html) 'audio_recorder_service_web.dart'
    as recorder_platform;

class AudioRecorderService {
  final AudioRecorder _audioRecorder = AudioRecorder();
  String? _recordingPath;

  bool get isRecording => _recordingPath != null;

  /// Requests microphone permissions.
  Future<bool> requestPermission() async {
    try {
      // 1. Try permission_handler first for mobile platforms
      if (!kIsWeb && (isAndroid || isIOS)) {
        final status = await Permission.microphone.request();
        return status == PermissionStatus.granted;
      }
    } catch (e) {
      debugPrint("Permission handler error (expected on some desktop): $e");
    }
    // 2. Fallback to the record package's own permission check for Desktop/Web
    return await _audioRecorder.hasPermission();
  }

  /// Lists available audio input devices.
  Future<List<InputDevice>> listInputDevices() async {
    if (await _audioRecorder.hasPermission()) {
      return await _audioRecorder.listInputDevices();
    }
    return [];
  }

  /// Starts recording to a temporary file. Returns true if successful.
  Future<bool> startRecording({InputDevice? device}) async {
    try {
      if (await _audioRecorder.hasPermission()) {
        String? path;

        if (!kIsWeb) {
          path = await recorder_platform.getRecordingPath();
        }

        _recordingPath = path ?? 'web_recording_blob';

        await _audioRecorder.start(
          RecordConfig(
            encoder: kIsWeb ? AudioEncoder.opus : AudioEncoder.aacLc,
            device: device,
            sampleRate: 48000,
            numChannels: 2,
          ),
          path: path ?? '',
        );
        debugPrint('Recording started');
        return true;
      } else {
        debugPrint('Microphone permission denied');
        return false;
      }
    } catch (e) {
      debugPrint('Error starting recording: $e');
      return false;
    }
  }

  /// Stops recording and returns the path to the recorded file.
  Future<String?> stopRecording() async {
    try {
      debugPrint('Service: Stopping recording hardware...');
      final path = await _audioRecorder.stop().timeout(
        const Duration(seconds: 3),
        onTimeout: () {
          debugPrint("Service: AudioRecorder stop timed out after 3 seconds.");
          return _recordingPath;
        },
      );
      _recordingPath = null;
      debugPrint('Service: Recording stopped successfully. File at $path');
      return path;
    } catch (e) {
      debugPrint('Service: Error stopping recording: $e');
      return null;
    }
  }

  /// Starts streaming recording (returns a stream of PCM 16-bit bytes).
  Future<Stream<Uint8List>?> startStreamRecording({InputDevice? device}) async {
    try {
      if (await _audioRecorder.hasPermission()) {
        final stream = await _audioRecorder.startStream(
          RecordConfig(
            encoder: AudioEncoder.pcm16bits,
            device: device,
            sampleRate: 48000,
            numChannels: 2,
          ),
        );
        _recordingPath = 'streaming';
        debugPrint('Streaming recording started');
        return stream;
      } else {
        debugPrint('Microphone permission denied');
        return null;
      }
    } catch (e) {
      debugPrint('Error starting stream recording: $e');
      return null;
    }
  }

  /// Disposes of the recorder resources.
  void dispose() {
    _audioRecorder.dispose();
  }
}
