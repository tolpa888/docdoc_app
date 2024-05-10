import 'package:docdoc_app/core/helpers/regex_text_form.dart';
import 'package:docdoc_app/core/helpers/spacing.dart';
import 'package:docdoc_app/core/widgets/docdoc_text_form_field.dart';
import 'package:docdoc_app/features/register/logic/register_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theming/colors.dart';

class RegisterForm extends StatefulWidget {
  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  bool isObscureText = true;
  bool hasLowerCase = false;
  bool hasUpperrCase = false;
  bool hasSpecialCharacter = false;
  bool hasNumber = false;
  bool hasMinimumLength = false;
  late TextEditingController passwordController;

  @override
  void initState() {
    passwordController = context.read<RegisterCubit>().passwordController;
    super.initState();
    setupPasswordControllerListener();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<RegisterCubit>().formKey,
      child: Column(
        children: [
          DocdocTextFormField(
              controller: context.read<RegisterCubit>().nameController,
              hintText: 'name',
              validator: (val) {
                if (val == null || val.isEmpty) {
                  return 'please enter your name';
                }
              }),
          verticalSpacing(20),
          DocdocTextFormField(
              controller: context.read<RegisterCubit>().emailController,
              hintText: 'email',
              validator: (val) {
                if (val == null || val.isEmpty || !AppRegex.isValidEmail(val)) {
                  return 'please enter a valid email';
                }
              }),
          verticalSpacing(20),
          DocdocTextFormField(
              controller: context.read<RegisterCubit>().phoneController,
              hintText: 'phone',
              validator: (val) {
                if (val == null || val.isEmpty || !AppRegex.phoneNumber(val)) {
                  return 'please enter a valid phone';
                }
              }),
          verticalSpacing(20),
          DocdocTextFormField(
            controller: context.read<RegisterCubit>().passwordController,
            hintText: 'password',
            validator: (val) {
              if (val == null || val.isEmpty)  {
                return
                    'please enter a valid password';
              }
            },
            isObscureText: isObscureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscureText = !isObscureText;
                });
              },
              child: Icon(
                isObscureText ? Icons.visibility_off : Icons.visibility,
                color: ColorsManger.mainblue,
              ),
            ),
          ),
          verticalSpacing(20),
          DocdocTextFormField(
              isObscureText: true,
              controller:
                  context.read<RegisterCubit>().confirmPasswordController,
              hintText: 'confirm password',
              validator: (val) {
                if (val == null || val.isEmpty || val != context.read<RegisterCubit>().passwordController.text ){
                  return
                      'please enter a matched password';
                }else{

                }
              }),
        ],
      ),
    );
  }

  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowerCase = AppRegex.hasLowerCase(passwordController.text);
        hasUpperrCase = AppRegex.hasUpperCase(passwordController.text);
        hasSpecialCharacter =
            AppRegex.hasSpecialCharacter(passwordController.text);
        hasNumber = AppRegex.hasDigit(passwordController.text);
        hasMinimumLength = AppRegex.hasMinimumLength(passwordController.text);
      });
    });
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }
}
