import 'package:docdoc_app/core/helpers/spacing.dart';
import 'package:docdoc_app/core/theming/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NameAndEmail extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
 return

        Column(
         children: [
           Text('Ali Tolpa', style: Styles.font24spblackMedium,),
           verticalSpacing(5),
           Text('alitolpa888@gmail.com',style: Styles.font13spGreyegular,),

         ],
       );

  }
}