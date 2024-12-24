import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:karandeep/main.dart';
import 'package:karandeep/welcome_page.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 5), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>WelcomePage()));
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      body:
        Container(
          color: Colors.purple,

          child: Center(child: Text("Flipkart", style: TextStyle(color: Colors.white, fontSize: 48, fontWeight: FontWeight.bold),)),
        ),

    );
    throw UnimplementedError();
  }
}