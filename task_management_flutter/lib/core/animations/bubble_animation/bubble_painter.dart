import 'package:flutter/material.dart';
import 'package:task_management_flutter/core/animations/bubble_animation/bubble.dart';

class BubblePainter extends CustomPainter {
  final List<Bubble> bubbles;

  BubblePainter(this.bubbles);

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()..style = PaintingStyle.fill;

    for (var bubble in bubbles) {
      paint.color = bubble.color;
      canvas.drawCircle(bubble.center, bubble.radius, paint);
    }

    // Apply the blur filter to the entire canvas
    canvas.saveLayer(Rect.fromLTWH(0, 0, size.width, size.height), Paint());
    for (var bubble in bubbles) {
      paint.color = bubble.color;
      canvas.drawCircle(bubble.center, bubble.radius, paint);
    }
    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
