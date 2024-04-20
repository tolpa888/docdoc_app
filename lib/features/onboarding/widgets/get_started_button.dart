import 'package:docdoc_app/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:docdoc_app/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetStartedButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        'Get Started',
        style: Styles.font16spWhiteSemibold,
      ),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(ColorsManger.mainblue),
          minimumSize: MaterialStateProperty.all(Size(double.infinity, 52.sp)),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap),
    );
  }
}
