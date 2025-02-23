import 'package:flutter/material.dart';
import 'package:jannah_journal/core/constants/app_colors.dart';

/// Custom extension to add a gradient property to ThemeData
extension ThemeGradients on ThemeData {
  LinearGradient get backgroundGradient => LinearGradient(
    colors: [AppColors.kGreyC7D7C8Color,AppColors.kWhiteD9D9D9Color], // Your colors
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0.3, 1.0], // Adjust blend effect
  );
}
