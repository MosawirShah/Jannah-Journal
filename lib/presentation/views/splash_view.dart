import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:jannah_journal/core/constants/app_colors.dart';
import 'package:jannah_journal/core/constants/app_strings.dart';

import '../../core/routes/routes_name.dart';
import '../styles/app_font_style.dart';
import '../styles/decorations/scaffold_background_painter.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    moveToNextScreen();
    super.initState();
  }

  //Navigation
  moveToNextScreen() {
    Future.delayed(const Duration(seconds: 2), () {
    Navigator.of(context).pushNamed(RoutesName.signInView);
      debugPrint("Moved to Sign-in View");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kGrey7D7C88Color,
      body: Stack(
        children: [
          // Top blurred shape
           ScaffoldBackGroundPainter.topBlurredShape(),

          // Bottom blurred shape
          ScaffoldBackGroundPainter.bottomBlurredShape(),
          Center(
            child: Text(
              AppStrings.splashViewText,
              style: AppFontStyle.largeTextStyle,
            ),
          ),
      ],
      ),
    );
  }
}
