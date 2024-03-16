import 'dart:math';
import 'dart:ui';

class Bubble {
  late double radius;
  double maxRadius;
  Color color;
  Offset center;
  Random random = Random();

  Bubble(this.center, this.maxRadius, this.color) {
    radius = random.nextDouble() * maxRadius;
  }

  void grow() {
    // Randomly grow or shrink the bubble
    if (random.nextBool()) {
      radius += random.nextDouble() * 2;
    } else {
      radius -= random.nextDouble() * 2;
    }

    // Clamp the radius to be within 0 and maxRadius
    radius = radius.clamp(0.0, maxRadius);
  }
}
