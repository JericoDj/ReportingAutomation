class ConversationAnalysisModel {
  final String type;
  final double confidence;
  final String status;
  final List<String> keywords;

  ConversationAnalysisModel({
    required this.type,
    required this.confidence,
    required this.status,
    this.keywords = const [],
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
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'confidence': confidence,
      'status': status,
      'keywords': keywords,
    };
  }
}
