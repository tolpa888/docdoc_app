import 'package:docdoc_app/core/theming/colors.dart';
import 'package:docdoc_app/core/theming/font_weight_helper.dart';
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
      color: Colors.white, fontSize: 16.sp, fontWeight: FontWeight.w600);
  static TextStyle font24mainbluepBold = TextStyle(
      color: ColorsManger.mainblue,
      fontSize: 24.sp,
      fontWeight: FontWeightHelper.bold);
  static TextStyle font14spGreyRegular = TextStyle(
      color: ColorsManger.grey,
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.regular);
  static TextStyle font14splightGreyRegular = TextStyle(
    color: ColorsManger.lightGrey,
        fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular
  );
  static TextStyle font14spMiblackRegular = TextStyle(
      color: ColorsManger.miblack,
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.regular
  );
  static TextStyle font12spMainBlueRegular = TextStyle(
  color: ColorsManger.mainblue,
  fontSize: 12.sp,
  fontWeight: FontWeightHelper.regular);

  static TextStyle font16spwhiteSemibold = TextStyle(
      color: Colors.white,
      fontSize: 16.sp,
      fontWeight: FontWeightHelper.semiBold);
  static TextStyle font13spBlackRegular = TextStyle(
      color: Colors.black,
      fontSize: 13.sp,
      fontWeight: FontWeightHelper.regular);
  static TextStyle font13spMainBlueSemiBold = TextStyle(
      color: ColorsManger.mainblue,
      fontSize: 13.sp,
      fontWeight: FontWeightHelper.semiBold);
  static TextStyle font13spblackMedium = TextStyle(
      color: Colors.black,
      fontSize: 11.sp,
      fontWeight: FontWeightHelper.medium);
  static TextStyle font13splightGreyRegular = TextStyle(
      color: ColorsManger.lightGrey,
      fontSize: 13.sp,
      fontWeight: FontWeightHelper.thin
  );
  static TextStyle font13splightGreyBold = TextStyle(
      color: Colors.grey,
      fontSize: 13.sp,
      fontWeight: FontWeightHelper.bold
  );
  static TextStyle font13splightGreyregular = TextStyle(
  color: ColorsManger.grey,
  fontSize: 12.sp,
  fontWeight: FontWeightHelper.regular);
}
