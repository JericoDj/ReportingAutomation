import 'dart:html' as html;

Future<String> savePdfBytes(List<int> bytes, String fileName) async {
  final blob = html.Blob([bytes], 'application/pdf');
  final url = html.Url.createObjectUrlFromBlob(blob);

  html.AnchorElement(href: url)
    ..download = fileName
    ..click();

  html.Url.revokeObjectUrl(url);
  return url;
}
