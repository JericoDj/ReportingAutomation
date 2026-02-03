import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:reportautomation/features/report_generator/models/transcription_model.dart';

class DeepgramService {
  // TODO: Move to environment variable or config
  static const String _projectId = 'reportingautomation-47bd8';
  // Use function name 'api' as defined in index.js
  static const String _functionUrl =
      'https://us-central1-$_projectId.cloudfunctions.net/api/transcribe';

  Future<TranscriptionModel> transcribeAudio(String audioUrl) async {
    try {
      if (kDebugMode) {
        print(
          'Calling Cloud Function at $_functionUrl with audioUrl: $audioUrl',
        );
      }

      final response = await http.post(
        Uri.parse(_functionUrl),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'audioUrl': audioUrl}),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);

        // Check for error in response body if API returns 200 but logical error
        if (data['error'] != null) {
          throw Exception('Cloud Function returned error: ${data['error']}');
        }

        return TranscriptionModel(
          status: 'completed',
          transcription: data['transcription'] ?? '',
          confidence: 1.0, // Simplified
        );
      } else {
        throw Exception(
          'Cloud Function Error: ${response.statusCode} - ${response.body}',
        );
      }
    } catch (e) {
      throw Exception('Deepgram Service Exception: $e');
    }
  }
}
