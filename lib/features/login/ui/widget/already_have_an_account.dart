import 'package:docdoc_app/core/theming/styles.dart';
import 'package:flutter/cupertino.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: [
          TextSpan(
              text: 'Dont have an account yet? ',
              style: Styles.font13spBlackRegular),
          TextSpan(text: 'Sign Up', style: Styles.font13spMainBlueSemiBold),
        ]),
      ),
    );
  }
}