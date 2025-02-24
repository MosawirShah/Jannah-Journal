import 'package:flutter/material.dart';
import '../core/routes/app_routes.dart';
import '../core/routes/routes_name.dart';

class AppSettings extends StatelessWidget {
  const AppSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //initialRoute: ,
      //theme: AppTheme.appLightTheme,
      initialRoute: RoutesName.homeView,
      routes: AppRoutes.appRoutes(context),
    );
  }
}
