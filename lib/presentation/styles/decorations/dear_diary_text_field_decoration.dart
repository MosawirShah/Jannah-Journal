import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class DearDiaryTextFieldDecoration{

 static InputDecoration getTextFieldDecoration(){
    return InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
            color: AppColors.kGreyA8A6A7Color.withOpacity(0.31),
            width: 3
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
            color: AppColors.kGreyA8A6A7Color,
            width: 3
        ),
      ),
    );
  }
}