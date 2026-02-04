import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:reportautomation/core/constants/api_constants.dart';
import 'package:reportautomation/features/report_generator/models/conversation_analysis_model.dart';
import 'package:reportautomation/features/report_generator/models/report_json_model.dart';

import 'package:flutter/foundation.dart';

class OpenAIService {
  final String _apiKey = ApiConstants.openAiApiKey;
  final String _baseUrl = ApiConstants.openAiUrl;
  final String _model = ApiConstants.openAiModel;

  /// Step 2: Analyze Conversation Type
  Future<ConversationAnalysisModel> analyzeConversation(
    String transcript,
  ) async {
    debugPrint('Analyzing transcript of length: ${transcript.length}');
    final prompt =
        '''
    Analyze the following conversation transcript.
    1. Identify the primary domain (e.g., Real Estate, Software Engineering, AI Research, Legal, Business, etc.).
    2. Determine the specific conversation type (e.g., proposal, code_review, strategy_meeting, interview, cost_analysis).
    
    Return strict JSON ONLY matching this schema:
    {
      "type": "software_architecture_review",
      "confidence": 0.95,
      "status": "proceed",
      "keywords": ["scalability", "database", "microservices"]
    }

    Transcript:
    "${transcript.substring(0, transcript.length > 4000 ? 4000 : transcript.length)}..." 
    ''';
    // Truncating transcript for context window safety if massive, though gpt-4-turbo handles 128k.

    final result = await _postRequest(prompt);
    return ConversationAnalysisModel.fromJson(jsonDecode(result));
  }

  /// Step 3: Generate Structured Report
  Future<ReportJsonModel> generateReport(
    String transcript,
    ConversationAnalysisModel analysis,
  ) async {
    final prompt =
        '''
    Generate a professional report based on this transcript.
    Context: The conversation was identified as: ${analysis.type}.

    Please organize the response into 3 specific sections:
    1. Overview: A detailed narrative summary of what was discussed (Paragraph 1).
    2. Key Details: specific facts, numbers, technical specs, dates, or requirements mentioned (Paragraph 2).
    3. AI Suggestions: Strategic advice, next steps, or potential risks based on the analysis (Paragraph 3).
    
    Return strict JSON ONLY matching this schema (do not wrap in markdown ```json blocks):
    {
      "status": "for_generation",
      "report_type": "${analysis.type}",
      "title": "Professional Report: ${analysis.type.replaceAll('_', ' ').toUpperCase()}",
      "generated_by": "AI Assistant",
      "date": "${DateTime.now().toIso8601String()}",
      "sections": [
        {
          "type": "paragraph",
          "title": "Overview",
          "content": "..."
        },
        {
          "type": "paragraph",
          "title": "Key Details",
          "content": "..."
        },
        {
          "type": "paragraph",
          "title": "AI Suggestions",
          "content": "..."
        }
      ],
      "recommendations": ["Action Item 1", "Action Item 2"]
    }

    Transcript:
    "$transcript"
    ''';

    final result = await _postRequest(prompt);
    // Sanitize response if it contains markdown code blocks
    String cleanJson = result
        .replaceAll('```json', '')
        .replaceAll('```', '')
        .trim();
    return ReportJsonModel.fromJson(jsonDecode(cleanJson));
  }

  Future<String> _postRequest(String userPrompt) async {
    try {
      final response = await http.post(
        Uri.parse(_baseUrl),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $_apiKey',
        },
        body: jsonEncode({
          'model': _model,
          'messages': [
            {
              'role': 'system',
              'content':
                  'You are a professional Business & Data Analyst. Output strict JSON.',
            },
            {'role': 'user', 'content': userPrompt},
          ],
          'temperature': 0.2, // Low temp for consistent JSON
          'response_format': {'type': 'json_object'},
        }),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return data['choices'][0]['message']['content'];
      } else {
        throw Exception(
          'OpenAI Error: ${response.statusCode} - ${response.body}',
        );
      }
    } catch (e) {
      throw Exception('OpenAI Exception: $e');
    }
  }
}
