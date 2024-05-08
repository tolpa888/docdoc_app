import 'package:docdoc_app/core/helpers/extensions.dart';
import 'package:docdoc_app/core/routing/routes.dart';
import 'package:docdoc_app/core/theming/colors.dart';
import 'package:docdoc_app/core/theming/styles.dart';
import 'package:docdoc_app/features/login/logic/login_cubit.dart';
import 'package:docdoc_app/features/login/logic/login_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubitListener extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return
       BlocListener<LoginCubit, LoginState>(
         listenWhen: (previous, current) => current is Loding || current is Success || current is Error,

           listener: (context, state){
           state.whenOrNull(
             loading: (){
               showDialog(context: context, builder: (context) => Center(
                 child: CircularProgressIndicator(
                   color: ColorsManger.mainblue,
                 ),

               ));
             },
               success: (loginResponse){
               context.pop();
context.pushNamed(Routes.homeScreen);
               },
             error: (error){
               context.pop();
               showDialog(context: context,
                   builder: (context)=> AlertDialog(
                     icon: Icon(Icons.error, color: Colors.red,size: 32,
                     ),
                     content: Text(error, style: Styles.font13spMainBlueSemiBold),
                     actions: [
                       TextButton(onPressed: (){context.pop();}, child: Text('Got it',style: Styles.font14spGreyRegular,))
                     ],
                   ));
             }
           );
           },
         child: SizedBox.shrink(),
         
       );
  }

}