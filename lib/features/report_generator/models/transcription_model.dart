class TranscriptionModel {
  final String status;
  final String transcription;
  final double confidence;
  final String audioUrl;

  TranscriptionModel({
    required this.status,
    required this.transcription,
    this.confidence = 0.0,
    this.audioUrl = '',
  });

  factory TranscriptionModel.fromJson(Map<String, dynamic> json) {
    return TranscriptionModel(
      status: json['status'] as String? ?? '',
      transcription: json['transcription'] as String? ?? '',
      confidence: (json['confidence'] as num?)?.toDouble() ?? 0.0,
      audioUrl: json['audioUrl'] as String? ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'transcription': transcription,
      'confidence': confidence,
      'audioUrl': audioUrl,
    };
  }
}
