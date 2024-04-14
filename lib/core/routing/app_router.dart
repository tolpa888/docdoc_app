import 'package:flutter/material.dart';
import 'package:docdoc_app/core/routing/routes.dart';
import 'package:docdoc_app/features/login/ui/widget/login_screen.dart';
import 'package:docdoc_app/features/onboarding/onboarding_screen.dart';

class AppRouter {
  Route generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboardingScreen:
        return MaterialPageRoute(builder: (_) =>  OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) =>  LoginScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child:
                        Text('No route defined as ${settings.name}'),
                  ),
                ));
    }
  }
}