import 'package:docdoc_app/core/theming/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocdocTextButton extends StatelessWidget {
  final String textButton;
  final VoidCallback onPressed;
  final double? borderRadius;
  final Color? backgroundColor;
  final double? horizontal;
  final double? vertical;
  final double? buttonWidth;
  final double? buttonHeight;
  final TextStyle? textStyle;

  @override
  const DocdocTextButton(
      {super.key,
      required this.textButton,
      required this.onPressed,
      this.borderRadius,
      this.backgroundColor,
      this.horizontal,
      this.vertical,
      this.buttonHeight,
      this.buttonWidth,
      this.textStyle});

  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 16),
            ),
          ),
          backgroundColor: MaterialStatePropertyAll(
              backgroundColor ?? ColorsManger.mainblue),
          padding: MaterialStateProperty.all<EdgeInsets>(
            EdgeInsets.symmetric(
                horizontal: horizontal ?? 12.w, vertical: vertical ?? 14.h),
          ),
          fixedSize: MaterialStateProperty.all(
            Size(buttonWidth ?? double.maxFinite, buttonHeight ?? 50.h),
          )),
      child: Text(
        textButton,
        style: textStyle,
      ),
      onPressed: onPressed,
    );
  }
}