import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return
    Scaffold(
      appBar: AppBar(title: Text('Welcome to home screen'),),
      body: Center(child: Text('Welcome to home Screen!!!!!!!!!')),
    );
  }

}