import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:jannah_journal/core/constants/app_colors.dart';
import 'package:jannah_journal/presentation/styles/app_font_style.dart';

class RichTextWidget extends StatelessWidget {
  final String normalText;
  final String clickableText;
  final VoidCallback onTap;

  const RichTextWidget({super.key,
    required this.normalText,
    required this.clickableText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: normalText,
        style: AppFontStyle.authSubTitleTextStyle.copyWith(color: AppColors.kBlackColor), // Normal text style
        children: [
          TextSpan(
            text: " $clickableText",
            style: AppFontStyle.authSubTitleTextStyle.copyWith(color: AppColors.kBrownD87234Color,fontWeight: FontWeight.bold), // Clickable text style
            recognizer: TapGestureRecognizer()..onTap = onTap, // Click action
          ),
        ],
      ),
    );
  }
}
