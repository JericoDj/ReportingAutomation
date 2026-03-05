/// Platform helper that works on all platforms including web.
/// This is the default (non-web) implementation.
import 'dart:io' as io;

bool get isAndroid => io.Platform.isAndroid;
bool get isIOS => io.Platform.isIOS;
bool get isMacOS => io.Platform.isMacOS;
bool get isWindows => io.Platform.isWindows;
bool get isLinux => io.Platform.isLinux;
