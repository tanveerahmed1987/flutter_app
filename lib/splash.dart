import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutterapp/Home.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void gotoHomeScreen() {
    Navigator.pushReplacement(
      context, 
      MaterialPageRoute(
        builder: (context) => Home()
      )
    );
  }

  @override
  void initState() {
    Timer(Duration(seconds: 3), gotoHomeScreen);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      child: FlutterLogo(size: MediaQuery.of(context).size.height)
    );
  }
}