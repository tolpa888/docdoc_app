import 'package:docdoc_app/core/helpers/extensions.dart';
import 'package:docdoc_app/features/register/logic/register_cubit.dart';
import 'package:docdoc_app/features/register/logic/register_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/routing/routes.dart';
import '../../../core/theming/colors.dart';
import '../../../core/theming/styles.dart';

class RegisterCubitListener extends StatelessWidget {
  const RegisterCubitListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterCubit, RegisterState>(
      listenWhen: (previous, current) =>
          current is Loding || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(loading: () {
          showDialog(
              context: context,
              builder: (context) =>const Center(
                    child: CircularProgressIndicator(
                      color: ColorsManger.mainblue,
                    ),
                  ));
        }, success: (RegisterResponse) {
          context.pop();
          context.pushNamed(Routes.loginScreen);
        }, error: (error) {
          context.pop();
          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                    icon: const Icon(
                      Icons.error,
                      color: Colors.red,
                      size: 32,
                    ),
                    content:
                        Text(error, style: Styles.font13spMainBlueSemiBold),
                    actions: [
                      TextButton(
                          onPressed: () {
                            context.pop();
                          },
                          child: Text(
                            'Got it',
                            style: Styles.font14spGreyRegular,
                          ))
                    ],
                  ));
        });
      },
      child: const SizedBox.shrink(),
    );
  }
}
