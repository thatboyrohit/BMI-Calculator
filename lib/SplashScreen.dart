import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutterbasics/IntroPage.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {

    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
        return IntroPage();
      }));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.cyanAccent,
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Text('Classico' , style:
            TextStyle( color: Colors.white,fontSize: 34,fontWeight: FontWeight.w700),),
        ),
      ),
    );
  }
}