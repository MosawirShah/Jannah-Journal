import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:jannah_journal/core/constants/app_strings.dart';
import 'package:jannah_journal/core/routes/app_routes.dart';
import 'package:jannah_journal/core/routes/routes_name.dart';
import 'package:jannah_journal/core/theme/theme_extension.dart';
import 'package:jannah_journal/core/utils/screen_utils.dart';

import '../styles/app_font_style.dart';
import '../styles/decorations/scaffold_cont_decoration.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    // TODO: implement initState
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
      body: Container(
        height: ScreenUtils.screenHeight(context),
        width: ScreenUtils.screenWidth(context),
        decoration: boxDecoration(context),
        child: Center(
          child: Text(
            AppStrings.splashViewText,
            style: AppFontStyle.largeTextStyle,
          ),
        ),
      ),
    );
  }
}
