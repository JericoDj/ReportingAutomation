import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:reportautomation/core/constants/api_constants.dart';
import 'package:reportautomation/features/report_generator/models/conversation_analysis_model.dart';
import 'package:reportautomation/features/report_generator/models/report_json_model.dart';

class OpenAIService {
  final String _apiKey = ApiConstants.openAiApiKey;
  final String _baseUrl = ApiConstants.openAiUrl;
  final String _model = ApiConstants.openAiModel;

  /// Step 2: Analyze Conversation Type
  Future<ConversationAnalysisModel> analyzeConversation(
    String transcript,
  ) async {
    final prompt =
        '''
    Analyze the following real estate conversation transcript.
    Determine the type (proposal, cost_analysis, marketing, advancement, or general).
    Extract key keywords.
    Determine if we should proceed with a report (status: proceed) or if it's too vague (status: review).
    
    Return strict JSON ONLY matching this schema:
    {
      "type": "proposal",
      "confidence": 0.95,
      "status": "proceed",
      "keywords": ["price", "marketing", "timeline"]
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
    Generate a professional real estate report based on this transcript.
    Context: The conversation was identified as: ${analysis.type}.
    
    Return strict JSON ONLY matching this schema (do not wrap in markdown ```json blocks):
    {
      "status": "for_generation",
      "report_type": "real_estate_${analysis.type}",
      "title": "Professional ${analysis.type.toUpperCase()} Report",
      "generated_by": "AI Assistant",
      "date": "${DateTime.now().toIso8601String()}",
      "sections": [
        {
          "type": "paragraph",
          "title": "Executive Summary",
          "content": "..."
        },
        {
          "type": "table",
          "title": "Cost Breakdown",
          "headers": ["Item", "Cost estimate"],
          "rows": [["Paint", "\$500"], ["Staging", "\$2000"]]
        }
      ],
      "recommendations": ["Action item 1", "Action item 2"]
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
                  'You are a professional Data Analyst for Real Estate. Output strict JSON.',
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
