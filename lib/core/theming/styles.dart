import 'package:docdoc_app/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class Styles {
  static TextStyle font24spblackbold = TextStyle(
      color: Colors.black, fontSize: 24.sp, fontWeight: FontWeight.bold);
  static TextStyle font32mainbluebold = TextStyle(
      color: ColorsManger.mainblue,
      fontSize: 38.sp,
      fontWeight: FontWeight.bold);
  static TextStyle font10sbGreyRegular = TextStyle(
      color: ColorsManger.grey, fontSize: 12.sp, fontWeight: FontWeight.w400);
  static TextStyle font16spWhiteSemibold = TextStyle(
    color: Colors.white, fontSize: 16.sp, fontWeight: FontWeight.w600
  );
}
