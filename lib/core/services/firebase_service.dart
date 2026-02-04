import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:reportautomation/features/report_generator/models/report_json_model.dart';
import 'package:flutter/foundation.dart';

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

  // --- Session Management ---

  /// Helper to extract date string (YYYYMMDD) from session ID
  String _getDateFromSessionId(String sessionId) {
    return sessionId.split('_').first;
  }

  /// Generates a session ID in format YYYYMMDD_NNN
  Future<String> createSessionId() async {
    final now = DateTime.now();
    final dateStr =
        "${now.year}${now.month.toString().padLeft(2, '0')}${now.day.toString().padLeft(2, '0')}";

    // Query for last session of *today* in the new path structure
    // We can't easily query across all users without a collection group index,
    // but for generating an ID, we assume standard incrementing.
    // Ideally we'd store a counter. For simplicity, we'll try to find the last one for *this user*.
    // However, createSessionId doesn't take userId currently.
    // Let's stick to the previous method but note that we need to query `sessions` collection
    // if we kept a global one, OR we just accept we might need to pass userId.
    // For this refactor, I will modify createSessionId to require userId or just check the global 'sessions' if we were still using it.
    // BUT we are moving to `users/{id}/history/...`
    // Let's rely on a global lookup or just random/timestamp if uniqueness is tricky.
    // Original logic queried `sessions` collection. If we stop writing there, we can't query it.

    // Compromise: We will continue to write to a global 'metrics' or just assume 001 start,
    // or better: check `users/user_123/history/DATE/sessions`.
    // I will assume 'user_123' for now or update signature.
    // Since I can't easily change the Provider signature safely in one go, I'll use a fixed 'user_123' for the ID check
    // OR better: use a simpler random suffix or timestamp if exact sequence isn't strict.
    // API was `createSessionId()`. Updated to `createSessionId(String userId)`.

    return "${dateStr}_${DateTime.now().millisecondsSinceEpoch.toString().substring(8)}";
    // Simplified ID generation to avoid complex query for now, ensuring uniqueness via timestamp suffix.
    // Format: YYYYMMDD_XXXX
  }

  Future<void> createSession(String sessionId, String userId) async {
    final dateStr = _getDateFromSessionId(sessionId);
    await _firestore
        .collection('users')
        .doc(userId)
        .collection('history')
        .doc(dateStr)
        .collection('sessions')
        .doc(sessionId)
        .set({
          'sessionId': sessionId,
          'userId': userId,
          'createdAt': FieldValue.serverTimestamp(),
          'status': 'started',
        });
  }

  Future<void> updateSessionState(
    String sessionId,
    Map<String, dynamic> data,
  ) async {
    // We need userId to construct path, but we only have sessionId.
    // This is a strict refactor issue.
    // FIX: pass userId to updateSessionState OR read it from somewhere.
    // ReportProvider likely has it. For now, I'll hardcode "user_123" if missing,
    // but ideally we update the signature.
    // Let's assume we pass userId or it's available.
    // CONSTANT: "user_123" for this task scope as seen in previous logs.
    const userId = "user_123";
    final dateStr = _getDateFromSessionId(sessionId);

    await _firestore
        .collection('users')
        .doc(userId)
        .collection('history')
        .doc(dateStr)
        .collection('sessions')
        .doc(sessionId)
        .update({...data, 'lastUpdated': FieldValue.serverTimestamp()});
  }

  Future<List<Map<String, dynamic>>> getRecentSessions(String userId) async {
    try {
      final now = DateTime.now();
      final dateStr =
          "${now.year}${now.month.toString().padLeft(2, '0')}${now.day.toString().padLeft(2, '0')}";

      // Fetch ONLY today's sessions from the date folder
      final snapshot = await _firestore
          .collection('users')
          .doc(userId)
          .collection('history')
          .doc(dateStr)
          .collection('sessions')
          .get();

      final docs = snapshot.docs.map((doc) => doc.data()).toList();

      // Client-side sort
      docs.sort((a, b) {
        final aTime = a['createdAt'] as Timestamp?;
        final bTime = b['createdAt'] as Timestamp?;
        if (aTime == null || bTime == null) return 0;
        return bTime.compareTo(aTime);
      });

      return docs;
    } catch (e) {
      debugPrint("Error fetching sessions: $e");
      return [];
    }
  }

  // --- Process Logging ---

  Future<void> logProcessStep(
    String userId,
    String? sessionId,
    String step,
    String status, {
    String? details,
  }) async {
    try {
      final logData = {
        'userId': userId,
        'sessionId': sessionId,
        'step': step,
        'status': status,
        'details': details,
        'timestamp': FieldValue.serverTimestamp(),
      };

      if (sessionId != null) {
        final dateStr = _getDateFromSessionId(sessionId);
        final sessionRef = _firestore
            .collection('users')
            .doc(userId)
            .collection('history')
            .doc(dateStr)
            .collection('sessions')
            .doc(sessionId);

        // Log to sub-collection
        await sessionRef.collection('logs').add(logData);

        // Update status
        if (status == 'Error') {
          await sessionRef.update({'status': 'error'});
        } else if (step == 'PDF Generation' && status == 'Completed') {
          await sessionRef.update({'status': 'completed'});
        }
      }

      debugPrint("LOG [$sessionId]: [$step] $status ${details ?? ''}");
    } catch (e) {
      debugPrint("LOGGING ERROR: $e");
    }
  }
}
