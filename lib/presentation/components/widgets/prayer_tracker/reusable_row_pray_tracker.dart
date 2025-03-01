import 'package:flutter/material.dart';
import 'package:jannah_journal/core/utils/screen_utils.dart';
import 'package:jannah_journal/presentation/styles/app_font_style.dart';

import 'circular_check_button.dart';

///ReusbaleRow
class ReusableRowPrayerTracker extends StatelessWidget {
  ReusableRowPrayerTracker(
      {required this.buttonID,
        required this.rowWidgetText,
        required this.onTapCheckBox,
        super.key});

  String rowWidgetText;
  VoidCallback onTapCheckBox;
  int buttonID;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: onTapCheckBox,
          child: CircularCheckButton(buttonID: buttonID),
        ),
        //spacer
        SizedBox(width: ScreenUtils.screenWidth(context) * 0.04,),
        Text(rowWidgetText,style: AppFontStyle.prayerTrackerFontStyle),
      ],
    );
  }
}
