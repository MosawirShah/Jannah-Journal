import 'package:flutter/material.dart';
import 'package:jannah_journal/core/utils/screen_utils.dart';

import '../../../core/constants/app_colors.dart';

class CustomLineContainer extends StatelessWidget {
  CustomLineContainer({required this.lineWidth, super.key});

  double lineWidth;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtils.screenHeight(context) * 0.002,
      width:  lineWidth ,
      decoration: BoxDecoration(
         color: AppColors.kGreyA8A6A7Color
       //   color: Colors.black //testing color
      ),
    );
  }
}
