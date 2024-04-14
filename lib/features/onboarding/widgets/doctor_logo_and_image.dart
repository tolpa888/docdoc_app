import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:docdoc_app/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorLogoAndImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: SvgPicture.asset('assets/svgs/docdoc_logo-transperant.svg'),
        ),
        Container(
          foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            stops: const [0.14, 0.4],
            colors: [
              Colors.white,
              Colors.white.withOpacity(0.0),
            ],
          )),
          child: Image.asset('assets/images/onboarding_doctor.png'),
        ),
        Positioned(
          bottom: 30.sp,
          left: 0.sp,
          right: 0.sp,
          child: Text(
            'Best Doctor Appointment App',
            style: Styles.font32mainbluebold,
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
