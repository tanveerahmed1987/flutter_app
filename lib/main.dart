import 'package:flutter/material.dart';
void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Tutorial',
      home: MyHomeWidget(),
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
    )
  );
}

class MyHomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyHomeWidget'),
      ),
      body: 
        Container(
          child: Center(
            child: Text('Hello MyHomeWidget!')
          )
        ),
    );
  }
}

