import 'package:flutter/material.dart';
import './Animal.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Tutorial',
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.lime,
      ),
      debugShowCheckedModeBanner: false,
    )
  );
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text('MyHomeWidget')),
      body: Center(
        child: Row(children: [
          Expanded(child: Animal('Elephant'),),
          SizedBox(width: 9.0,),
          Expanded(child: Animal('Cat')),
        ],
        ),));
  }
}

