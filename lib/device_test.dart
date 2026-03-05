import 'package:record/record.dart';

void main() async {
  final record = AudioRecorder();
  if (await record.hasPermission()) {
    final devices = await record.listInputDevices();
    for (var device in devices) {
      print('Device: \${device.label}, Id: \${device.id}');
    }
  } else {
    print("No permission.");
  }
}
