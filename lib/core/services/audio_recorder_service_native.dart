import 'package:path_provider/path_provider.dart';

Future<String?> getRecordingPath() async {
  final directory = await getTemporaryDirectory();

  // Ensure the directory itself exists before writing
  if (!await directory.exists()) {
    await directory.create(recursive: true);
  }

  final timestamp = DateTime.now().millisecondsSinceEpoch;
  return '${directory.path}/interview_$timestamp.m4a';
}
