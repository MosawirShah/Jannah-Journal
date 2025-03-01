import 'package:flutter/material.dart';
import 'package:jannah_journal/core/theme/app_theme.dart';
import '../core/routes/app_routes.dart';
import '../core/routes/routes_name.dart';

class AppSettings extends StatelessWidget {
  const AppSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //initialRoute: ,
      theme: AppTheme.appThemeData(),
      initialRoute: RoutesName.splashView,
      routes: AppRoutes.appRoutes(context),
    );
  }
}
