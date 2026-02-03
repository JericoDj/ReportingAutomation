import 'package:flutter/foundation.dart';

class AudioFileModel {
  final String name;
  final String path;
  final int size;
  final Uint8List? bytes; // For web support

  AudioFileModel({
    required this.name,
    required this.path,
    required this.size,
    this.bytes,
  });
}
