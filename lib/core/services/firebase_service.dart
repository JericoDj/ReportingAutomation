import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:reportautomation/features/report_generator/models/report_json_model.dart';

class FirebaseService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> saveTranscription(String userId, String transcription) async {
    await _firestore.collection('transcriptions').add({
      'userId': userId,
      'content': transcription,
      'createdAt': FieldValue.serverTimestamp(),
    });
  }

  Future<void> saveReport(String userId, ReportJsonModel report) async {
    await _firestore.collection('reports').add({
      'userId': userId,
      'report': report.toJson(),
      'createdAt': FieldValue.serverTimestamp(),
    });
  }

  // Additional methods as needed
}
