import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:jannah_journal/core/constants/app_colors.dart';

class AppUtils{
  static progressIndicator(){

    return SpinKitFadingCircle(
      color: AppColors.kWhiteColor,
    );
  }
}