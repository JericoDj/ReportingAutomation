import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:reportautomation/core/constants/api_constants.dart';

class GeminiService {
  final String _apiKey = ApiConstants.geminiApiKey;
  final String _model = ApiConstants.geminiModel;

  Future<String> generateInterviewAnswer(String transcribedText) async {
    final prompt =
        '''
    You are an AI assistant helping a candidate during a live interview.
    I will provide you with the transcribed audio of what the interviewer just asked.
    Please provide the BEST, most professional, and concise answer to the question.
    Ensure the answer is directly addressing the question, helpful, and highlights the candidate's potential if applicable.
    
    If the text doesn't seem like a question, provide a relevant professional response or advice on how to handle the statement.
    Do NOT output JSON, just return the plain text answer.

    Transcribed Text:
    "$transcribedText"
    ''';

    final url =
        'https://generativelanguage.googleapis.com/v1beta/models/$_model:generateContent?key=$_apiKey';

    try {
      final response = await http.post(
        Uri.parse(url),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          "contents": [
            {
              "parts": [
                {"text": prompt},
              ],
            },
          ],
          "generationConfig": {"temperature": 0.7},
        }),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final answer = data['candidates'][0]['content']['parts'][0]['text'];
        return answer.toString();
      } else {
        throw Exception(
          'Gemini Error: ${response.statusCode} - ${response.body}',
        );
      }
    } catch (e) {
      throw Exception('Gemini Exception: $e');
    }
  }
}
