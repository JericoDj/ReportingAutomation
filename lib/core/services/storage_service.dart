import 'dart:io';
import 'dart:typed_data';
import 'package:firebase_storage/firebase_storage.dart';

class StorageService {
  final FirebaseStorage _storage = FirebaseStorage.instance;

  Future<List<Map<String, String>>> listAudioFiles() async {
    try {
      final ref = _storage.ref().child('audio_uploads');
      final result = await ref.listAll();

      List<Map<String, String>> files = [];
      for (final ref in result.items) {
        final url = await ref.getDownloadURL();
        files.add({'name': ref.name, 'url': url});
      }
      return files;
    } catch (e) {
      throw Exception('List Files Error: $e');
    }
  }

  Future<String> uploadAudioFile(
    String fileName,
    String filePath, {
    Uint8List? bytes,
  }) async {
    try {
      final ref = _storage.ref().child('audio_uploads/$fileName');

      UploadTask task;
      if (bytes != null) {
        task = ref.putData(bytes);
      } else {
        task = ref.putFile(File(filePath));
      }

      final snapshot = await task;
      return await snapshot.ref.getDownloadURL();
    } catch (e) {
      throw Exception('Storage Upload Error: $e');
    }
  }

  Future<String> uploadPdfFile(String fileName, String filePath) async {
    try {
      final ref = _storage.ref().child('generated_reports/$fileName');
      final task = ref.putFile(File(filePath));
      final snapshot = await task;
      return await snapshot.ref.getDownloadURL();
    } catch (e) {
      throw Exception('PDF Upload Error: $e');
    }
  }
}
