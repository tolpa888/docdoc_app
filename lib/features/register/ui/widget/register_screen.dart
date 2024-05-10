import 'dart:ffi';

import 'package:docdoc_app/core/helpers/spacing.dart';
import 'package:docdoc_app/core/helpers/text_constant.dart';
import 'package:docdoc_app/core/theming/styles.dart';
import 'package:docdoc_app/core/widgets/docdoc_text_button.dart';
import 'package:docdoc_app/features/register/logic/register_cubit.dart';
import 'package:docdoc_app/features/register/ui/widget/already_have_an_account.dart';
import 'package:docdoc_app/features/login/ui/widget/terms_and_conditions.dart';
import 'package:docdoc_app/features/register/ui/widget/register_cubit_listener.dart';
import 'package:docdoc_app/features/register/ui/widget/register_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(30.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Create Account', style: Styles.font24mainbluepBold),
                verticalSpacing(8.h),
                Text(
                  TextConstant.registerText,
                  style: Styles.font14spGreyRegular,
                ),
                verticalSpacing(20),
                RegisterForm(),
                verticalSpacing(30),
                DocdocTextButton(
                  onPressed: () {
                    validateThenRegister(context);
                  },
                  textButton: 'Create Account',
                  textStyle: Styles.font16spWhiteSemibold,
                ),
                verticalSpacing(20),
                TermsAndConditions(),
                verticalSpacing(30),
                AlreadyHaveAnAccount(),
                RegisterCubitListener(),
              ],
            ),
          ),
        ),
      ),
    );
  }
  void validateThenRegister (BuildContext context) {
    if (context.read<RegisterCubit>().formKey.currentState!.validate()){
      context.read<RegisterCubit>().emitRegisterrState();
    }


  }
}
