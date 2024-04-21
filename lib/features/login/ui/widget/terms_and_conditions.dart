import 'package:docdoc_app/core/theming/styles.dart';
import 'package:flutter/cupertino.dart';

class TermsAndConditions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(children: [
        TextSpan(
            text: 'By logging, you agree to our ',
            style: Styles.font13splightGreyRegular),
        TextSpan(text: 'Terms & Conditions ', style: Styles.font13spblackMedium),
        TextSpan(
            text: 'and ',
            style: Styles.font13splightGreyRegular.copyWith(height: 1.5)),
        TextSpan(text: 'Privacy Policy.', style: Styles.font13spblackMedium),
      ]),
    );
  }
}