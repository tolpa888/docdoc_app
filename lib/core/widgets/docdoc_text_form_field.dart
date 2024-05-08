import 'dart:ffi';

import 'package:docdoc_app/core/theming/colors.dart';
import 'package:docdoc_app/core/theming/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocdocTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? hintStyle;
  final TextStyle? inputTextStyles;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? fillColor;
  final TextEditingController? controller;
  final Function(String?) validator;

  const DocdocTextFormField(
      {super.key,
      this.contentPadding,
      this.focusedBorder,
      this.enabledBorder,
      this.inputTextStyles,
      this.hintStyle,
      required this.hintText,
      this.isObscureText,
      this.suffixIcon,
      this.fillColor,
      this.controller,
      required this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        fillColor: fillColor ?? ColorsManger.moreLightGrey,
        filled: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(vertical: 20.h, horizontal: 17.w),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
                borderSide: const BorderSide(
                  color: ColorsManger.ligterGrey,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(16)),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
                borderSide: const BorderSide(
                  color: ColorsManger.mainblue,
                  width: 1.3,
                ),
                borderRadius: BorderRadius.circular(16)),
        errorBorder: focusedBorder ??
            OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.red,
                  width: 1.3,
                ),
                borderRadius: BorderRadius.circular(16)),
        focusedErrorBorder: focusedBorder ??
            OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.red,
                  width: 1.3,
                ),
                borderRadius: BorderRadius.circular(16)),
        hintStyle: hintStyle ?? Styles.font14splightGreyRegular,
        hintText: hintText,
        suffixIcon: suffixIcon,
      ),
      obscureText: isObscureText ?? false,
      style: inputTextStyles ?? Styles.font14spMiblackRegular,
      controller: controller,
      validator: (value){
        return
            validator(value);
      },
    );
  }
}
