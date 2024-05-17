import 'package:docdoc_app/core/helpers/extensions.dart';
import 'package:docdoc_app/core/helpers/text_constant.dart';
import 'package:docdoc_app/core/routing/routes.dart';
import 'package:docdoc_app/core/widgets/docdoc_text_form_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/docdoc_text_button.dart';

class ForgotPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize:MainAxisSize.min,
            children: [
              Text('Forgot Password',
                  style: Styles.font24mainbluepBold),
              verticalSpacing(8),
              Text(
                TextConstant.passwordText,
                style: Styles.font14spGreyRegular,
              ),
              verticalSpacing(30),
              DocdocTextFormField(
                hintText: 'Email or Phone number',
                validator: (value) {},
              ),
              Spacer(),
              DocdocTextButton(
                onPressed: () {
                  context.pushReplacementNamed(Routes.loginScreen);
                },
                textButton: 'Reset Password',
                textStyle: Styles.font16spWhiteSemibold,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
