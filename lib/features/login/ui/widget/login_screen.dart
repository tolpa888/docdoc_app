import 'package:docdoc_app/core/helpers/spacing.dart';
import 'package:docdoc_app/core/theming/colors.dart';
import 'package:docdoc_app/core/theming/styles.dart';
import 'package:docdoc_app/core/widgets/docdoc_text_button.dart';
import 'package:docdoc_app/core/widgets/docdoc_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:docdoc_app/features/login/ui/widget/already_have_an_account.dart';
import 'package:docdoc_app/features/login/ui/widget/terms_and_conditions.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObscureText = true;

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
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      const DocdocTextFormField(
                        hintText: 'Email',
                      ),
                      verticalSpacing(18),
                      DocdocTextFormField(
                        hintText: 'Password',
                        isObscureText: isObscureText,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isObscureText = !isObscureText;
                            });
                          },
                          child: Icon(isObscureText
                              ? Icons.visibility_off
                              : Icons.visibility, color: ColorsManger.mainblue,),
                        ),
                      ),
                      verticalSpacing(24),
                    ],
                  ),
                ),
                verticalSpacing(24),
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: Text('Forgot Password',
                      style: Styles.font12spMainBlueRegular),
                ),
                verticalSpacing(40),
                DocdocTextButton(textButton: 'Login',textStyle: Styles.font16spWhiteSemibold,
                  onPressed:(){

                } ,),
                verticalSpacing(16),
                AlreadyHaveAnAccount(),
                verticalSpacing(60),
                TermsAndConditions()


              ],
            ),
          ),
        ),
      ),
    );
  }
}