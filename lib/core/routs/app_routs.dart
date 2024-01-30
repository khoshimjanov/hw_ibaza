import 'package:flutter/cupertino.dart';
import 'package:hw_i_baza/features/login/presentation/login.dart';
import 'package:hw_i_baza/features/on_boarding/presentation/on_boarding.dart';
import 'package:hw_i_baza/features/splash/presentation/splash.dart';

import '../../features/login/presentation/sign_up.dart';

abstract class AppRouts {
  static Route<dynamic> router(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return CupertinoPageRoute(builder: (_) => const SplashScreen());
      case '/login':
        return CupertinoPageRoute(builder: (_) => const LoginScreen());
      case '/onboarding':
        return CupertinoPageRoute(builder: (_) => const OnBoardingScreen());
      case '/signup':
        return CupertinoPageRoute(builder: (_)=>const SignUp());
      default:
        return CupertinoPageRoute(builder: (_)=>const SizedBox());
    }
  }
}
