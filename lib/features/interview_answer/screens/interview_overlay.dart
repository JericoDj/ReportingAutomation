import 'package:flutter/material.dart';
import 'package:flutter_overlay_window/flutter_overlay_window.dart';

class InterviewOverlay extends StatefulWidget {
  const InterviewOverlay({super.key});

  @override
  State<InterviewOverlay> createState() => _InterviewOverlayState();
}

class _InterviewOverlayState extends State<InterviewOverlay> {
  String _latestAnswer = "Generating answer...";

  @override
  void initState() {
    super.initState();
    // Listen for messages from the main app
    FlutterOverlayWindow.overlayListener.listen((event) {
      if (event != null && event is String) {
        setState(() {
          _latestAnswer = event;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.black87,
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(color: Colors.black26, blurRadius: 10, spreadRadius: 2),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                    Icon(Icons.mic, color: Colors.redAccent, size: 20),
                    SizedBox(width: 8),
                    Text(
                      "Recording...",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    FlutterOverlayWindow.closeOverlay();
                  },
                  child: const Icon(Icons.close, color: Colors.white, size: 20),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              _latestAnswer,
              style: const TextStyle(color: Colors.white70, fontSize: 13),
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
