import 'package:flutter/cupertino.dart';
import 'package:jannah_journal/core/routes/routes_name.dart';
import 'package:jannah_journal/presentation/views/auth/sign_up_view.dart';

import '../../presentation/views/auth/sign_in_view.dart';
import '../../presentation/views/splash_view.dart';


class AppRoutes{

  static Map<String,Widget Function(BuildContext)> appRoutes(BuildContext context){
    return {
      RoutesName.splashView : (context) => SplashView(),
      RoutesName.signInView : (context) => SignInView(),
      RoutesName.signUpView : (context) => SignUpView(),
    };
  }
}