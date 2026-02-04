import 'package:flutter/material.dart';

import 'web_pdf_view_stub.dart' if (dart.library.html) 'web_pdf_view_web.dart';

class WebPdfViewer extends StatelessWidget {
  final String url;
  const WebPdfViewer({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return WebPdfView(url: url);
  }
}
