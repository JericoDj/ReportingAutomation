import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiConstants {
  // Deepgram
  static String get deepgramApiKey => dotenv.env['DEEPGRAM_API_KEY'] ?? '';
  static const String deepgramUrl =
      'https://api.deepgram.com/v1/listen?smart_format=true&model=nova-2';

  // OpenAI
  static String get openAiApiKey => dotenv.env['OPENAI_API_KEY'] ?? '';
  static const String openAiUrl = 'https://api.openai.com/v1/chat/completions';
  static const String openAiModel = 'gpt-4-turbo-preview';
}
