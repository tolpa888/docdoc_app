import 'package:docdoc_app/core/helpers/spacing.dart';
import 'package:docdoc_app/core/theming/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:docdoc_app/core/theming/styles.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperrCase;
  final bool hasSpecialCharacter;
  final bool hasNumber;
  final bool hasMinimumLength;

  const PasswordValidations({super.key, required this.hasLowerCase, required this.hasUpperrCase, required this.hasSpecialCharacter, required this.hasNumber, required this.hasMinimumLength});

  @override
  Widget build(BuildContext context) {
  return
      Column(
         children: [
           verticalSpacing(10),
           buildingValidationRow('At least 1 lower case letter', hasLowerCase),
           verticalSpacing(2),
           buildingValidationRow('At least 1 upper case letter', hasUpperrCase),
           verticalSpacing(2),
           buildingValidationRow('At least 1 special  character letter', hasSpecialCharacter),
           verticalSpacing(2),
           buildingValidationRow('At least 1 number', hasNumber),
           verticalSpacing(2),
           buildingValidationRow('At least 8 characters long', hasMinimumLength),
           verticalSpacing(2),
         ],
      );

  }
Widget buildingValidationRow(String text, bool hasValitated){
    return
       Row(
         children: [
           CircleAvatar(
             radius: 2.5,
             backgroundColor: ColorsManger.grey,

           ),
           horzintalSpacing(6),
           Text(text,style: Styles.font13splightGreyregular.copyWith(
             decoration: hasValitated ? TextDecoration.lineThrough : null,
             decorationColor: ColorsManger.mainblue,
             decorationThickness: 2,
             color: hasValitated ? ColorsManger.mainblue : ColorsManger.grey,
           )),
         ],
       );
}
}