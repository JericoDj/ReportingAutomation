class PdfReportModel {
  final String filePath; // Local path
  final String? downloadUrl; // Firebase URL
  final bool isSigned;
  final String? signaturePath;

  PdfReportModel({
    required this.filePath,
    this.downloadUrl,
    this.isSigned = false,
    this.signaturePath,
  });
}
