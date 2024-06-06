import 'package:docdoc_app/core/helpers/spacing.dart';
import 'package:docdoc_app/core/theming/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/colors.dart';

class AppointmentRecords extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        color: ColorsManger.profileGrey,
        borderRadius: BorderRadius.circular(16),
      ),
      height: 59,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'My Appointment',
            style: Styles.font12spblackRegular,
          ),
          horzintalSpacing(20),
          const VerticalDivider(
            color: ColorsManger.dividerColor,
            thickness: 1,
          ),
          horzintalSpacing(20),
          Text(
            'Medical records',
            style: Styles.font12spblackRegular,
          )
        ],
      ),
    );
  }
}
