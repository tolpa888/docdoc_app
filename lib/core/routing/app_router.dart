import 'package:docdoc_app/core/di/dependency_injection.dart';
import 'package:docdoc_app/features/login/logic/login_cubit.dart';
import 'package:docdoc_app/features/register/logic/register_cubit.dart';
import 'package:docdoc_app/features/register/ui/widget/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:docdoc_app/core/routing/routes.dart';
import 'package:docdoc_app/features/login/ui/widget/login_screen.dart';
import 'package:docdoc_app/features/onboarding/onboarding_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:docdoc_app/features/home/home.dart';

class AppRouter {
  Route generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboardingScreen:
        return MaterialPageRoute(builder: (_) => OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<LoginCubit>(),
                  child: LoginScreen(),
                ));
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case Routes.registerScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
              create: (context) => getIt<RegisterCubit>(),
              child: RegisterScreen(),
            ));
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined as ${settings.name}'),
                  ),
                ));
    }
  }
}
