import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData appLightTheme = ThemeData(
    primaryColor: Color(0xFFC7D7C8), // Main theme color
    scaffoldBackgroundColor: Colors.red, // Default background color
    colorScheme: ColorScheme.light(
      primary: Color(0xFFC7D7C8), // Primary color
      secondary: Color(0xFFD9D9D9), // Secondary color
      background: Color(0xFFD9D9D9),
    ),
  );
}
