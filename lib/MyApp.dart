import 'package:flutter/material.dart';
import 'package:flutterapp/splash.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     
     home: SplashScreen(),
     theme: ThemeData(
       primarySwatch: Colors.teal
     ),
   );
  }
}