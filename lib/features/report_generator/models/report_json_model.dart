class ReportJsonModel {
  final String status;
  final String reportType;
  final String title;
  final String generatedBy;
  final String date;
  final List<ReportSection> sections;
  final List<String> recommendations;

  ReportJsonModel({
    required this.status,
    required this.reportType,
    required this.title,
    required this.generatedBy,
    required this.date,
    required this.sections,
    this.recommendations = const [],
  });

  factory ReportJsonModel.fromJson(Map<String, dynamic> json) {
    return ReportJsonModel(
      status: json['status'] as String? ?? '',
      reportType: json['report_type'] as String? ?? '',
      title: json['title'] as String? ?? '',
      generatedBy: json['generated_by'] as String? ?? '',
      date: json['date'] as String? ?? '',
      sections:
          (json['sections'] as List<dynamic>?)
              ?.map((e) => ReportSection.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      recommendations:
          (json['recommendations'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'report_type': reportType,
      'title': title,
      'generated_by': generatedBy,
      'date': date,
      'sections': sections.map((e) => e.toJson()).toList(),
      'recommendations': recommendations,
    };
  }
}

class ReportSection {
  final String type;
  final String? title;
  final String? content;
  final List<String>? headers;
  final List<List<String>>? rows;
  final List<String>? items;

  ReportSection({
    required this.type,
    this.title,
    this.content,
    this.headers,
    this.rows,
    this.items,
  });

  factory ReportSection.fromJson(Map<String, dynamic> json) {
    return ReportSection(
      type: json['type'] as String? ?? '',
      title: json['title'] as String?,
      content: json['content'] as String?,
      headers: (json['headers'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      rows: (json['rows'] as List<dynamic>?)
          ?.map((e) => (e as List<dynamic>).map((i) => i as String).toList())
          .toList(),
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'title': title,
      'content': content,
      'headers': headers,
      'rows': rows,
      'items': items,
    };
  }
}
