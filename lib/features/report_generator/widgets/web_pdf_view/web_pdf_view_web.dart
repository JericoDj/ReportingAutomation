import 'dart:html' as html;
import 'dart:ui_web' as ui_web;
import 'package:flutter/material.dart';

class WebPdfView extends StatefulWidget {
  final String url;
  const WebPdfView({super.key, required this.url});

  @override
  State<WebPdfView> createState() => _WebPdfViewState();
}

class _WebPdfViewState extends State<WebPdfView> {
  late String _viewType;

  @override
  void initState() {
    super.initState();
    final id = DateTime.now().millisecondsSinceEpoch.toString();
    _viewType = 'iframe-pdf-$id';

    // ignore: undefined_prefixed_name
    ui_web.platformViewRegistry.registerViewFactory(
      _viewType,
      (int viewId) => html.IFrameElement()
        ..src = widget.url
        ..style.border = 'none'
        ..style.height = '100%'
        ..style.width = '100%'
        ..allowFullscreen = true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return HtmlElementView(viewType: _viewType);
  }
}
