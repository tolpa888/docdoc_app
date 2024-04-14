import 'package:docdoc_app/features/onboarding/widgets/doctor_logo_and_image.dart';
import 'package:flutter/material.dart';
import 'package:docdoc_app/features/onboarding/widgets/doc_logo_and_name.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:docdoc_app/features/onboarding/widgets/doctor_logo_and_image.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Column(
            children: [
              DocLogoAndName(),
              SizedBox(height: 30.h,),
              DoctorLogoAndImage(),
            ],
          ),
        )),
      ),
    );
  }
}
