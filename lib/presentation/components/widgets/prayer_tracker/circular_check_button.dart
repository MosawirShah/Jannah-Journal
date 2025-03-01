import 'package:flutter/material.dart';
import 'package:jannah_journal/core/utils/screen_utils.dart';
import 'package:provider/provider.dart';

import '../../../view_models/prayer_tracker_view_model.dart';

///Circular Button
class CircularCheckButton extends StatelessWidget {
  CircularCheckButton({required this.buttonID, super.key});

  int buttonID;
  @override
  Widget build(BuildContext context) {
    final prayerTrackerProvider = Provider.of<PrayerTrackerViewModel>(context);

    return Container(
      height: ScreenUtils.screenHeight(context) * 0.025, // Small size
      width: ScreenUtils.screenWidth(context) * 0.05,
      decoration: BoxDecoration(
        color: prayerTrackerProvider.isChecked(buttonID)
            ? Colors.blue
            : null, // Checked/unchecked colors
        shape: BoxShape.circle,
        border: Border.all(
            color: prayerTrackerProvider.isChecked(buttonID)
                ? Colors.transparent
                : Colors.grey,
            width: 2),
      ),
      child: Center(
        child: Icon(
          prayerTrackerProvider.isChecked(buttonID)
              ? Icons.check
              : null, // Toggle check/cross
          size: 12, // Icon size
          color: Colors.white,
        ),
      ),
    );
  }
}

