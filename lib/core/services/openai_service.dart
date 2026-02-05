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

    final truncatedTranscript =
    transcript.substring(0, transcript.length > 4000 ? 4000 : transcript.length);

    final prompt = '''
Analyze the following conversation transcript and make a strict classification.

TASKS:
1. Identify the primary domain (e.g., Real Estate, Software Engineering, AI, Business, Legal).
2. Identify the conversation type (e.g., strategy_meeting, interview, proposal, architecture_review, cost_analysis).
3. Decide the recommended report type using this RULE:

DECISION RULE (MANDATORY):
- If the conversation contains ANY of the following:
  • pricing ranges
  • budget estimates
  • cost comparisons
  • financial tradeoffs
  • ROI, maintenance cost, hourly rates
  → recommended_report_type MUST be "cost_analysis"

- Otherwise → recommended_report_type MUST be "general"

OUTPUT RULES:
- Choose ONLY ONE: "general" or "cost_analysis"
- Do NOT explain your reasoning
- Return STRICT JSON ONLY
- Match the schema EXACTLY

JSON SCHEMA:
{
  "type": "conversation_type_here",
  "recommended_report_type": "general_or_cost_analysis",
  "confidence": 0.0,
  "status": "proceed",
  "keywords": []
}

Transcript:
"$truncatedTranscript"
''';

    final result = await _postRequest(prompt);
    return ConversationAnalysisModel.fromJson(jsonDecode(result));
  }


  /// Step 3: Generate Structured Report
  Future<ReportJsonModel> generateReport(
    String transcript,
    ConversationAnalysisModel analysis,
  ) async {
    // Determine prompt based on recommended report type
    // If analysis does not have the field (backwards compatibility), default to general
    final isCostAnalysis =
        (analysis.toJson()['recommended_report_type'] ?? 'general') ==
        'cost_analysis';

    String prompt;

    if (isCostAnalysis) {
      prompt =
          '''
      Generate a Cost Analysis Report based on this transcript.
      Context: The conversation was identified as: ${analysis.type}.

      Please organize the response into 4 specific sections STRICTLY:
      1. Context: A paragraph explaining the financial context (Section 1).
      2. Cost Breakdown: A set of data points ideal for a bar chart (Section 2 - Type: chart).
      3. Detailed Figures: A table with itemized costs (Section 3 - Type: table).
      4. Analysis: A paragraph with financial analysis (Section 4).

      Return strict JSON ONLY matching this schema:
      {
        "status": "for_generation",
        "report_type": "cost_analysis",
        "title": "Cost Analysis: ${analysis.type.replaceAll('_', ' ').toUpperCase()}",
        "generated_by": "AI Assistant",
        "date": "${DateTime.now().toIso8601String()}",
        "sections": [
          {
            "type": "paragraph",
            "title": "Context",
            "content": "..."
          },
          {
            "type": "chart",
            "title": "Cost Breakdown",
            "chart_data": {
              "Category A": 1000,
              "Category B": 500,
              "Category C": 250
            }
          },
          {
            "type": "table",
            "title": "Detailed Figures",
            "headers": ["Item", "Cost", "Notes"],
            "rows": [
              ["Item 1", "\$1000", "Critical"],
              ["Item 2", "\$500", "Optional"]
            ]
          },
          {
            "type": "paragraph",
            "title": "Financial Analysis",
            "content": "..."
          }
        ],
        "recommendations": ["Reduce spending on X", "Invest in Y"]
      }

      Transcript:
      "$transcript"
      ''';
    } else {
      prompt =
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
        "report_type": "general",
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
    }

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
