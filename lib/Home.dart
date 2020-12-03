

import 'package:flutter/material.dart';
import './MyAppBar.dart';
class Home extends StatelessWidget {

  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(      
      appBar: MyAppBar(),
      body: Container(
        color: Colors.teal, 
        child: Center(child: Text('Hello World', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white))),
      ),
    );
  } 

}