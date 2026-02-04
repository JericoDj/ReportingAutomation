import 'dart:typed_data';

class PdfReportModel {
  final String filePath; // Local path
  final String? downloadUrl; // Firebase URL
  final bool isSigned;
  final String? signaturePath;

  final Uint8List? pdfBytes;

  PdfReportModel({
    required this.filePath,
    this.downloadUrl,
    this.isSigned = false,
    this.signaturePath,
    this.pdfBytes,
  });

  Map<String, dynamic> toJson() {
    return {
      'filePath': filePath,
      'downloadUrl': downloadUrl,
      'isSigned': isSigned,
      'signaturePath': signaturePath,
      // 'pdfBytes' is intentionally not serialized to JSON/Firestore to avoid size limits
    };
  }

  factory PdfReportModel.fromJson(Map<String, dynamic> json) {
    return PdfReportModel(
      filePath: json['filePath'] as String,
      downloadUrl: json['downloadUrl'] as String?,
      isSigned: json['isSigned'] as bool? ?? false,
      signaturePath: json['signaturePath'] as String?,
    );
  }
}
