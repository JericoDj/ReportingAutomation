import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/foundation.dart';

Future<String> savePdfBytes(List<int> bytes, String fileName) async {
  try {
    final directory = await getTemporaryDirectory();
    final file = File('${directory.path}/$fileName');
    await file.writeAsBytes(bytes);
    debugPrint('PDF saved to: ${file.path}');
    return file.path;
  } catch (e) {
    debugPrint('Error saving PDF: $e');
    rethrow;
  }
}
