import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jannah_journal/app/app_settings.dart';
import 'package:jannah_journal/core/constants/app_colors.dart';
import 'package:jannah_journal/core/constants/app_strings.dart';
import 'package:jannah_journal/core/routes/routes_name.dart';
import 'package:jannah_journal/core/utils/screen_utils.dart';

class CustomCommonButton extends StatelessWidget {
   CustomCommonButton({required this.buttonTitle,required this.onTap,required this.buttonHeight,required this.buttonWidth,super.key});

   //The width is for different width of the button each screen
   double buttonWidth;
   String buttonTitle;
   double buttonHeight;
   VoidCallback onTap;
  //Card Widget for testing
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: buttonHeight,
        width: buttonWidth,
        decoration: BoxDecoration(
          color: AppColors.kBlackColor,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(color: AppColors.kBlackColor,spreadRadius: 1,offset: Offset(0, 2),blurRadius: 2),
          ],
        ),
        child: Center(
          child: Text(buttonTitle.toString(),style: GoogleFonts.inter(
              fontSize: 17,color: AppColors.kWhiteColor,fontWeight: FontWeight.bold
          ),),
        ),
      ),
    );
  }
}
