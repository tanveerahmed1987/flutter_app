import 'package:flutter/material.dart';
import 'screens/profile/ProfileScreen.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tutorial',
      home: ProfileScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}





