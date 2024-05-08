import 'package:docdoc_app/core/routing/app_router.dart';
import 'package:docdoc_app/core/routing/routes.dart';
import 'package:docdoc_app/core/theming/styles.dart';
import 'package:docdoc_app/core/widgets/docdoc_text_button.dart';
import 'package:docdoc_app/features/login/ui/widget/login_screen.dart';
import 'package:docdoc_app/features/onboarding/widgets/doctor_logo_and_image.dart';
import 'package:flutter/material.dart';
import 'package:docdoc_app/features/onboarding/widgets/doc_logo_and_name.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:docdoc_app/features/onboarding/widgets/get_started_button.dart';

class OnboardingScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Column(
            children: [
              DocLogoAndName(),
              SizedBox(
                height: 30.h,
              ),
              DoctorLogoAndImage(),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: Column(
                  children: [
                    Text(
                      'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience',
                      style: Styles.font10sbGreyRegular,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 18.sp),
                    DocdocTextButton(textButton: 'Get Started',textStyle: Styles.font16spWhiteSemibold, onPressed: (){
                      Navigator.pushNamed(context, Routes.loginScreen);
                    })
                  ],
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
