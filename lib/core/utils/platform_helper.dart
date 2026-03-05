/// Conditional import that selects the right platform helper
/// depending on whether we're compiling for web or native.
///
/// Usage:
///   import 'package:reportautomation/core/utils/platform_helper.dart';
///   if (isAndroid) { ... }

export 'platform_helper_native.dart'
    if (dart.library.html) 'platform_helper_web.dart';
