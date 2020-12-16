import 'package:flutter/material.dart';
import 'package:flutterapp/ListExample.dart';

import 'GridExample.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Sticky Header Example')),
        body: Container(
          color: Colors.teal,
          child: ListView(
            children: [
              _Item(text: 'List Example' , builder: (_) => const ListExample() ,),
              _Item(text: 'Grid Example' , builder: (_) => const GridExample() ,)
            ],
          )
        )
      ),
    );
  }
}


class _Item extends StatelessWidget {

  const _Item({
    Key key,
    @required this.text,
    @required this.builder,
  }) : super(key: key);

  final String text;
  final WidgetBuilder builder;


  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue,
      child: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: builder));
          },
          child: Container(
            padding: EdgeInsets.all(16),
            child: Text(
              text,
              style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
      ), 
    );
  }
}