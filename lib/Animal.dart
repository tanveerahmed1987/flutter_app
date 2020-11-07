import 'package:flutter/material.dart';

class Animal extends StatelessWidget {
  final String _name;
  const Animal(this._name);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.orange,
        border: Border.all(width: 2.0, style: BorderStyle.solid, color: Colors.green),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
        ),
      ), 
      child: Padding( padding: EdgeInsets.all(8.0), child: 
      Text(this._name, 
      textAlign: TextAlign.center, 
      style: TextStyle(
            fontSize: 30.0, 
            color: Colors.blue
          ),
        ),
      ),
    );
  }
}

