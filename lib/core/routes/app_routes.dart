import 'package:flutter/cupertino.dart';
import 'package:jannah_journal/core/routes/routes_name.dart';
import 'package:jannah_journal/presentation/views/auth/sign_up_view.dart';
import 'package:jannah_journal/presentation/views/charity_view.dart';
import 'package:jannah_journal/presentation/views/home_view.dart';
import 'package:jannah_journal/presentation/views/overview_view.dart';
import 'package:jannah_journal/presentation/views/prayer_tracker_view.dart';
import 'package:jannah_journal/presentation/views/settings_view.dart';

import '../../presentation/views/add_hasanat_view.dart';
import '../../presentation/views/auth/sign_in_view.dart';
import '../../presentation/views/dear_diary_view.dart';
import '../../presentation/views/dua_view.dart';
import '../../presentation/views/splash_view.dart';


class AppRoutes{

  static Map<String,Widget Function(BuildContext)> appRoutes(BuildContext context){
    return {
      RoutesName.splashView : (context) => SplashView(),
      RoutesName.signInView : (context) => SignInView(),
      RoutesName.signUpView : (context) => SignUpView(),
      RoutesName.homeView : (context) => HomeView(),
      RoutesName.dearDiaryView :(context)=> DearDiaryView(),
      RoutesName.prayerTrackerView : (context) => PrayerTrackerView(),
      RoutesName.overviewView : (context) => OverviewView(),
      RoutesName.settingsView : (context) => SettingsView(),
      RoutesName.addHasanatView : (context) => AddHasanatView(),
      RoutesName.duaView : (context) => DuaView(),
      RoutesName.charityView : (context) => CharityView()
    };
  }
}