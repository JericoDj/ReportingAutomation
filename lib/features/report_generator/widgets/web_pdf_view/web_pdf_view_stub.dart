import 'package:flutter/material.dart';

class WebPdfView extends StatelessWidget {
  final String url;
  const WebPdfView({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Web PDF View not supported on this platform."),
    );
  }
}
