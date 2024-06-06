
import 'package:docdoc_app/core/theming/colors.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
   bool status = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Notification'),
      centerTitle: true,),
      body:ListView(
        children: [
          SwitchListTile(onChanged: (val){
           setState(() {
             status = val;
           });
          },title:Text('Notification from DocNow') ,value: status , activeTrackColor: ColorsManger.mainblue,),
          SwitchListTile(onChanged: (val){
            setState(() {
              status = val;
            });
          },title:Text('Sound') ,value: status , activeTrackColor: ColorsManger.mainblue,),

          Container(
            height: 100,
            child: SwitchListTile(onChanged: (val){
              setState(() {
                status = val;
              });
            },title:Text('Vibrate') ,value: status , activeTrackColor: ColorsManger.mainblue,),
          ),],
      ),
    );
  }
}
