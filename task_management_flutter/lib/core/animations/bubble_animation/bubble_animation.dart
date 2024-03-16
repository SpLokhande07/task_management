import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:task_management_flutter/animations/bubble_animation/bubble.dart';
import 'dart:math';
import 'dart:ui';

import 'package:task_management_flutter/core/animations/bubble_animation/bubble.dart';
import 'package:task_management_flutter/core/animations/bubble_animation/bubble_painter.dart';

class BubbleAnimationWidget extends StatefulWidget {
  @override
  _BubbleAnimationWidgetState createState() => _BubbleAnimationWidgetState();
}

class _BubbleAnimationWidgetState extends State<BubbleAnimationWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  List<Bubble> bubbles = [];
  int numberOfBubbles = 500;
  final double maxBubbleRadius = 50.0;
  @override
  void initState() {
    super.initState();

    // Initialize bubbles with random positions and sizes
    // Use WidgetsBinding to wait for the build to complete
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final Size screenSize = MediaQuery.of(context).size;
      final double screenWidth = 1.sw;
      final double screenHeight = 1.sh;

      // Now that we have the screen size, initialize the bubbles
      bubbles = [];
      final Random random = Random();
      for (int i = 0; i < numberOfBubbles; i++) {
        bool placed = false;
        while (!placed) {
          final double x = random.nextDouble() * screenWidth;
          final double y = random.nextDouble() * screenHeight;
          final double radius = random.nextDouble() * maxBubbleRadius;
          final Offset newCenter = Offset(x, y);
          bool overlaps = bubbles.any((bubble) =>
              (bubble.center - newCenter).distance < bubble.radius + radius);

          if (!overlaps) {
            bubbles
                .add(Bubble(newCenter, radius, Colors.blue.withOpacity(0.5)));
            placed = true;
          }
        }
      }

      // Trigger a rebuild now that the bubbles are initialized
      setState(() {});
    });
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )
      ..addListener(() {
        setState(() {
          for (var bubble in bubbles) {
            bubble.grow();
          }
        });
      })
      ..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: BubblePainter(bubbles),
      size: Size.infinite,
    );
  }
}
