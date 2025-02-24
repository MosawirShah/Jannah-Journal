import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jannah_journal/presentation/views/splash_view.dart';

class ScaffoldBackGroundPainter{

  static topBlurredShape(){

    //top blur shape
    return const Positioned(
      top: 100, // Slightly above for natural effect
      left: 0,
      right: -120,
      child: BlurredShape(width: 400, height: 250, blur: 60, opacity: 0.2),
    );
  }

  //Bottom Blurred shape
  static bottomBlurredShape(){
    return const Positioned(
      bottom: -30,
      right: -120,
      child: BlurredShape(width: 400, height: 250, blur: 60, opacity: 0.2),
    );
  }
}

class BlurredShape extends StatelessWidget {
  final double width, height, blur, opacity;

  const BlurredShape({
    required this.width,
    required this.height,
    required this.blur,
    required this.opacity,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
          child: CustomPaint(
            size: Size(width, height),
            painter: WavyBlurredShapePainter(opacity),
          ),
        ),
      ),
    );
  }
}

class WavyBlurredShapePainter extends CustomPainter {
  final double opacity;
  WavyBlurredShapePainter(this.opacity);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.white.withOpacity(opacity)
      ..style = PaintingStyle.fill
      ..maskFilter = MaskFilter.blur(BlurStyle.normal, 30); // Softer blur

    Path path = Path();
    path.moveTo(size.width * 0.2, size.height * 0.3);
    path.quadraticBezierTo(
        size.width * 0.4, size.height * 0.2, size.width * 0.85, size.height * 0.2);
    path.quadraticBezierTo(
        size.width * 1.2, size.height * 0.55, size.width * 0.7, size.height * 0.7);
    path.quadraticBezierTo(
        size.width * 0.2, size.height * 1.1, size.width * 0.1, size.height * 0.2);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}