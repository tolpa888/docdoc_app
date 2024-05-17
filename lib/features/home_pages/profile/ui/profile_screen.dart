import 'package:docdoc_app/core/helpers/spacing.dart';
import 'package:docdoc_app/core/theming/colors.dart';
import 'package:docdoc_app/features/home_pages/profile/ui/widgets/appointment_records.dart';
import 'package:docdoc_app/features/home_pages/profile/ui/widgets/name_and_email.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/theming/styles.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: Styles.font18whiteSemibold,
        ),
        backgroundColor: ColorsManger.mainblue,
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/svgs/setting.svg')),
        ],
      ),
      body: Stack(alignment: Alignment.topCenter, children: [
        Container(
          color: ColorsManger.mainblue,
          constraints: BoxConstraints.expand(),
        ),
        Padding(
          padding: EdgeInsets.only(top: 60, left: 0, right: 0),
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    topLeft: Radius.circular(25))),
            child: ListView(
              children: [
                verticalSpacing(80.h),
                NameAndEmail(),
                verticalSpacing(20),
                AppointmentRecords(),


              ],
            ),
          ),
        ),
        Image.asset(
          'assets/images/profile_image.png',
          width: 120.h,
          height: 120.h,
        ),
      ]),
    );
  }
}
