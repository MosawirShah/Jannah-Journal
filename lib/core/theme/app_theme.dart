import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class AppTheme{

  static ThemeData appThemeData(){
    return ThemeData(
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        //  backgroundColor: AppColors.kBlackColor,
        selectedItemColor: AppColors.kWhiteColor, // Icon & text color when selected
        unselectedItemColor: AppColors.kWhiteColor, // Icon & text color when unselected
        selectedLabelStyle: TextStyle(
          color: AppColors.kWhiteColor, // Label text color when selected
        ),
        unselectedLabelStyle: TextStyle(
          color: AppColors.kWhiteColor, // Label text color when unselected
        ),
      ),
    );
  }
}