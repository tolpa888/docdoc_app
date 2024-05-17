import 'package:docdoc_app/core/di/dependency_injection.dart';
import 'package:docdoc_app/features/login/logic/login_cubit.dart';
import 'package:docdoc_app/features/register/logic/register_cubit.dart';
import 'package:docdoc_app/features/register/ui/widget/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:docdoc_app/core/routing/routes.dart';
import 'package:docdoc_app/features/login/ui/widget/login_screen.dart';
import 'package:docdoc_app/features/onboarding/onboarding_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import '../../features/forgot_password/ui/widgets/forgot_password.dart';
import '../../features/home_pages/docdoc_bottom _navigation_bar.dart';


class AppRouter {
  Route? generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboardingScreen:
        return MaterialPageRoute(builder: (_) => OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<LoginCubit>(),
                  child: LoginScreen(),
                ));
      case Routes.docDocBottomNavigationBar:
        return MaterialPageRoute(builder: (_) => DocdocBottomNavigationBar());
      case Routes.registerScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
              create: (context) => getIt<RegisterCubit>(),
              child: RegisterScreen(),
            ));
      case Routes.forgotPasswordScreen:
        return MaterialPageRoute(builder: (_) => ForgotPasswordScreen());

    }
  }
}
