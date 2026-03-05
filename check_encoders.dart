import 'package:record/record.dart';

void main() {
  for (var encoder in AudioEncoder.values) {
    print(encoder.name);
  }
}
