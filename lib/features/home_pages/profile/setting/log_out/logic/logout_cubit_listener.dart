import 'package:docdoc_app/core/helpers/extensions.dart';
import 'package:docdoc_app/features/home_pages/profile/setting/log_out/logic/logout_cubit.dart';
import 'package:docdoc_app/features/home_pages/profile/setting/log_out/logic/logout_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../core/routing/routes.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/theming/styles.dart';

class LogoutCubitListener extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('alitolpa');
    return BlocListener<LogoutCubit, LogoutState>(
      listenWhen: (previous, current) =>
          current is Loding || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(loading: () {
          showDialog(
              context: context,
              builder: (context) => const Center(
                    child: CircularProgressIndicator(
                      color: ColorsManger.mainblue,
                    ),
                  ));
        }, success: (logoutResponse) {
          context.pop();
          context.pushNamedAndRemoveUntil(Routes.loginScreen, (route) => false);
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
