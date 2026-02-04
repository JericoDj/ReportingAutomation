import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reportautomation/core/services/firebase_service.dart';
import 'package:reportautomation/features/report_generator/providers/report_provider.dart';

class SessionPicker extends StatefulWidget {
  const SessionPicker({super.key});

  @override
  State<SessionPicker> createState() => _SessionPickerState();
}

class _SessionPickerState extends State<SessionPicker> {
  final _firebaseService = FirebaseService();
  List<Map<String, dynamic>> _sessions = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadSessions();
  }

  Future<void> _loadSessions() async {
    // "user_123" is hardcoded for this demo
    final sessions = await _firebaseService.getRecentSessions("user_123");
    if (mounted) {
      setState(() {
        _sessions = sessions;
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Resume Session"),
      content: SizedBox(
        width: 400,
        height: 400,
        child: _isLoading
            ? const Center(child: CircularProgressIndicator())
            : _sessions.isEmpty
            ? const Center(child: Text("No recent sessions found."))
            : ListView.builder(
                itemCount: _sessions.length,
                itemBuilder: (context, index) {
                  final session = _sessions[index];
                  final sessionId = session['sessionId'] as String;
                  final status = session['status'] as String? ?? 'Unknown';
                  // final date = session['createdAt'] ... (Formatting needed)

                  return ListTile(
                    leading: const Icon(Icons.history_edu),
                    title: Text(sessionId),
                    subtitle: Text("Status: $status"),
                    trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                    onTap: () {
                      // Load Session
                      context.read<ReportProvider>().loadSession(session);
                      Navigator.pop(context);
                    },
                  );
                },
              ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text("Cancel"),
        ),
      ],
    );
  }
}
