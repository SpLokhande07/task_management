import 'package:flutter/foundation.dart';

const iOSClientId =
    '620234940540-fv8ban56bsujhs84ul7dg21ng4r5hs5q.apps.googleusercontent.com';
const webClientId =
    "620234940540-ehjnbhqo69ntds2jicbnn71iehefffu5.apps.googleusercontent.com";
const googleServerClientId =
    '620234940540-ehjnbhqo69ntds2jicbnn71iehefffu5.apps.googleusercontent.com';

String get googleClientId {
  return switch (defaultTargetPlatform) {
    TargetPlatform.iOS || TargetPlatform.macOS => iOSClientId,
    _ => webClientId,
  };
}
