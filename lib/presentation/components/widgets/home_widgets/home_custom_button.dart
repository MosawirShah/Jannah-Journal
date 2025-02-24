import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jannah_journal/app/app_settings.dart';
import 'package:jannah_journal/core/constants/app_colors.dart';
import 'package:jannah_journal/core/constants/app_strings.dart';
import 'package:jannah_journal/core/utils/screen_utils.dart';

class HomeCustomButton extends StatelessWidget {
   HomeCustomButton({super.key});

  //Card Widget for testing
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        height: ScreenUtils.screenHeight(context) * 0.06,
        width: ScreenUtils.screenWidth(context) ,
        decoration: BoxDecoration(
          color: AppColors.kBlackColor,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(color: AppColors.kBlackColor,spreadRadius: 1,offset: Offset(0, 2),blurRadius: 2),
          ],
        ),
        child: Center(
          child: Text(AppStrings.homeCustomButtonText,style: GoogleFonts.inter(
            fontSize: 17,color: AppColors.kWhiteColor,fontWeight: FontWeight.bold
          ),),
        ),
      ),
    );
  }
}
