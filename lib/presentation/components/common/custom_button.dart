import 'package:flutter/material.dart';
import 'package:jannah_journal/core/constants/app_colors.dart';
import 'package:jannah_journal/core/constants/app_strings.dart';
import 'package:jannah_journal/core/utils/screen_utils.dart';
import 'package:jannah_journal/presentation/styles/app_font_style.dart';

class CustomButton extends StatelessWidget {
   CustomButton({required this.titleText,required this.onTap, super.key,});

   final VoidCallback onTap;
   final String titleText;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: ScreenUtils.screenHeight(context) * 0.06,
        width: ScreenUtils.screenWidth(context) * 0.9,
        decoration: BoxDecoration(color: AppColors.kBlackColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
            child: Text(titleText,
                style: AppFontStyle.customButtonTextStyle)),
      ),
    );
  }
}
