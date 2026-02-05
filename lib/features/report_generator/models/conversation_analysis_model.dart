class ConversationAnalysisModel {
  final String type;
  final double confidence;
  final String status;
  final List<String> keywords;
  final String? recommendedReportType;

  ConversationAnalysisModel({
    required this.type,
    required this.confidence,
    required this.status,
    this.keywords = const [],
    this.recommendedReportType,
  });

  factory ConversationAnalysisModel.fromJson(Map<String, dynamic> json) {
    return ConversationAnalysisModel(
      type: json['type'] as String? ?? '',
      confidence: (json['confidence'] as num?)?.toDouble() ?? 0.0,
      status: json['status'] as String? ?? '',
      keywords:
          (json['keywords'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      recommendedReportType: json['recommended_report_type'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'confidence': confidence,
      'status': status,
      'keywords': keywords,
      'recommended_report_type': recommendedReportType,
    };
  }
}
