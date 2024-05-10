import 'package:docdoc_app/core/helpers/spacing.dart';
import 'package:docdoc_app/core/theming/styles.dart';
import 'package:docdoc_app/core/widgets/docdoc_text_button.dart';
import 'package:docdoc_app/features/login/data/model/login_request_body.dart';
import 'package:docdoc_app/features/login/logic/login_cubit.dart';
import 'package:docdoc_app/features/login/ui/widget/dont_have_account.dart';
import 'package:docdoc_app/features/login/ui/widget/email_and_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:docdoc_app/features/register/ui/widget/already_have_an_account.dart';
import 'package:docdoc_app/features/login/ui/widget/terms_and_conditions.dart';
import 'login_cubit_listener.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.sp, vertical: 30.sp),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome Back',
                  style: Styles.font24mainbluepBold,
                ),
                verticalSpacing(8),
                Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                  style: Styles.font14spGreyRegular,
                ),
                verticalSpacing(31),
                Column(
                  children: [
                    EmailAndPassword(),
                    verticalSpacing(24),
                  ],
                ),
                verticalSpacing(24),
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: Text('Forgot Password',
                      style: Styles.font12spMainBlueRegular),
                ),
                verticalSpacing(40),
                DocdocTextButton(
                  textButton: 'Login',
                  textStyle: Styles.font16spWhiteSemibold,
                  onPressed: () {
                    validateThenLogin(context);
                  },
                ),
                verticalSpacing(16),
                DontHaveAccount(),
                verticalSpacing(30),
                TermsAndConditions(),
                LoginCubitListener(),
              ],
            ),
          ),
        ),
      ),
    );

  }

  void validateThenLogin(BuildContext context){
if (context.read<LoginCubit>().formKey.currentState!.validate()){
context.read<LoginCubit>().emitLoginState();

}
  }
}