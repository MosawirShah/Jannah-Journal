import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jannah_journal/core/constants/app_colors.dart';

class AppFontStyle {
  //headline1
  static TextStyle? largeTextStyle = GoogleFonts.inter(
    color: AppColors.kSplashTextColor,
    fontSize: 40,
    fontWeight: FontWeight.bold,
  );

  //Auth Title TextStyle i.e: SignIn & SignUp
  static TextStyle authTitleTextStyle =
  GoogleFonts.nunito(fontSize: 40, fontWeight: FontWeight.bold);

  //Auth Subtitle Text Style
  static TextStyle authSubTitleTextStyle = GoogleFonts.nunito(
      fontSize: 16, color: AppColors.kWhiteE9E9E9Color);

  //Custom Button TextStyle
  static TextStyle customButtonTextStyle = GoogleFonts.nunito(
    color: AppColors.kWhiteColor,fontWeight: FontWeight.bold,fontSize: 20,
  );

  static TextStyle fontStyleInterSmallSize = GoogleFonts.inter(fontSize: 16,fontWeight: FontWeight.bold
  );
}
