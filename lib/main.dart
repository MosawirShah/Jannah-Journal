import 'package:flutter/material.dart';
import 'package:jannah_journal/core/routes/app_routes.dart';
import 'package:jannah_journal/core/routes/routes_name.dart';
import 'package:jannah_journal/core/theme/app_theme.dart';

void main(){
  runApp(const JannahJournalApp());
}

class JannahJournalApp extends StatelessWidget {
  const JannahJournalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //initialRoute: ,
      theme: AppTheme.appLightTheme,
      initialRoute: RoutesName.splashView,
      routes: AppRoutes.appRoutes(context),
    );
  }
}
