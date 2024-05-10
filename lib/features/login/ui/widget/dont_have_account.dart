import 'package:docdoc_app/core/helpers/extensions.dart';
import 'package:docdoc_app/core/routing/routes.dart';
import 'package:docdoc_app/core/theming/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Dont have an account yet?', style: Styles.font13spBlackRegular),
        TextButton(
          onPressed: () {
            context.pushNamed(Routes.registerScreen);
          },
          child: Text('Sign Up', style: Styles.font13spMainBlueSemiBold),
        )
      ],
    );
  }
}
