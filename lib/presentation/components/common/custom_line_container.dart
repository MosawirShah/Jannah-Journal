import 'package:flutter/material.dart';
import 'package:jannah_journal/core/utils/screen_utils.dart';

class CustomLineContainer extends StatelessWidget {
  const CustomLineContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtils.screenHeight(context) * 0.002,
      width: ScreenUtils.screenWidth(context) * 0.35,
      decoration: BoxDecoration(
        // color: AppColors.kGreyA8A6A7Color
          color: Colors.black //testing color
      ),
    );
  }
}
