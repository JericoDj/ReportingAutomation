import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';
import 'package:web_socket_channel/io.dart';
import 'package:reportautomation/core/constants/api_constants.dart';

class DeepgramStreamService {
  IOWebSocketChannel? _channel;
  StreamSubscription? _audioSubscription;
  final String _apiKey = ApiConstants.deepgramApiKey;

  /// Connects to Deepgram WebSocket and pipes the audio stream.
  /// Yields the transcribed text segments as they arrive.
  Stream<String> streamTranscription(Stream<Uint8List> audioStream) async* {
    if (_apiKey.isEmpty) {
      throw Exception('DEEPGRAM_API_KEY is not set in .env');
    }

    // Configure the WebSocket URL for live streaming
    // Matching the AudioRecorder configuration: 48kHz, stereo, PCM 16-bit
    final uri = Uri.parse(
      'wss://api.deepgram.com/v1/listen?encoding=linear16&sample_rate=48000&channels=2&interim_results=true',
    );

    try {
      debugPrint("DeepgramService: Connecting to WebSocket at $uri");
      _channel = IOWebSocketChannel.connect(
        uri,
        headers: {'Authorization': 'Token $_apiKey'},
        pingInterval: const Duration(seconds: 15),
      );
      debugPrint("DeepgramService: WebSocket connected successfully.");
    } catch (e) {
      debugPrint("DeepgramService: Error connecting to WebSocket: $e");
      rethrow;
    }

    // Pipe audio to the channel
    _audioSubscription = audioStream.listen(
      (data) {
        debugPrint(
          "DeepgramService: Sending ${data.length} bytes of audio data.",
        );
        _channel?.sink.add(data);
      },
      onError: (e) => debugPrint("DeepgramService: Audio stream error: $e"),
      onDone: () => debugPrint("DeepgramService: Audio stream done."),
    );

    // Parse and yield transcripts
    debugPrint("DeepgramService: Listening to WebSocket stream...");
    try {
      await for (final message in _channel!.stream) {
        // debugPrint("DeepgramService: Received message: $message");
        final data = jsonDecode(message);

        // Look for the transcript in the JSON payload
        if (data['channel'] != null &&
            data['channel']['alternatives'] != null) {
          final alt = data['channel']['alternatives'][0];
          final transcript = alt['transcript'] as String?;
          if (transcript != null && transcript.isNotEmpty) {
            // If is_final is true, it's a confirmed sentence.
            // If false, it's interim (guessing as you speak).
            final isFinal = data['is_final'] == true;
            yield jsonEncode({'text': transcript, 'isFinal': isFinal});
          }
        }
      }
    } catch (e) {
      debugPrint("DeepgramService: Error listening to stream: $e");
    }
  }

  void stop() async {
    debugPrint("DeepgramService: Stopping Deepgram stream...");
    await _audioSubscription?.cancel();
    debugPrint("DeepgramService: Audio subscription cancelled.");

    // Send standard Deepgram close message to signal end of stream
    _channel?.sink.add(jsonEncode({"type": "CloseStream"}));
    debugPrint("DeepgramService: Sent CloseStream message to Deepgram.");

    await _channel?.sink.close();
    debugPrint("DeepgramService: WebSocket channel closed.");
  }
}
