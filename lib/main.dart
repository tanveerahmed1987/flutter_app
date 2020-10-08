import 'package:flutter/material.dart';
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
          Expanded(child: Name('Dog'),),
          SizedBox(width: 9.0,),
          Expanded(child: Name('Cat')),
          SizedBox(width: 9.0,),
          Expanded(child: Name('Tiger')),
        ],
        ),));
  }
}

class Name extends StatelessWidget {
  final String _name;
  const Name(this._name);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(color: Colors.orange), 
      child: Padding( padding: EdgeInsets.all(8.0), child: 
      Text(this._name, textAlign: TextAlign.center, style: TextStyle(fontSize: 30.0))),
    );
  }
}

