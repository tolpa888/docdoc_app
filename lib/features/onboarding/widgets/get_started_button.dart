import 'package:docdoc_app/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:docdoc_app/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(ColorsManger.mainblue),
          minimumSize: WidgetStateProperty.all(Size(double.infinity, 52.sp)),
          shape: WidgetStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap),
      child: Text(
        'Get Started',
        style: Styles.font16spWhiteSemibold,
      ),
    );
  }
}
