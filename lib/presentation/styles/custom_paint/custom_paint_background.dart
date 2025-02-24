import 'package:flutter/material.dart';

class CustomPaintBackground extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Colors.blue.withOpacity(0.5); // 50% opacity

    Rect rect = Rect.fromLTWH(2.08, 89.39, 391.04, 253.62); // Position and size
    canvas.drawOval(rect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
