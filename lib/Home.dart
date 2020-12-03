

import 'package:flutter/material.dart';
import './MyAppBar.dart';
class Home extends StatelessWidget {

  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(      
      appBar: MyAppBar(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.red,
        onPressed: () { 
          print('FloatingActionButton pressed');
        },
      ),
      body: Container(
        color: Colors.teal, 
        child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: FlatButton(
                      onPressed: () {
                        print('Flat Button is pressed');
                      }, 
                      child: Text('Button 1'), 
                    ),
                  ),

                  Expanded(
                    child: RaisedButton(
                      onPressed: () {
                          print('Raised Button is pressed');
                      }, 
                      child: Text('Button 2'), 
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: IconButton(
                      icon: Icon(Icons.notifications), 
                      onPressed: () {
                        print('Icon Button Pressed');
                      }
                    ),
                  ),

                  Expanded(
                    child: InkWell(
                      child: Container(child: Text('Button 4')),
                      onTap: () {
                        print('InkWell button pressed');
                      },
                    ),
                  )
                ],
              ),Row(
                children: [
                  Expanded(
                    child: OutlineButton(
                      onPressed: () {
                        print('OutlineButton pressed');
                      },
                      
                      textColor: Colors.red,
                      child: Text('Button 5'),

                    ),
                  ),

                
                ],
              ),
            ],
          ),
        ) ,
      ),
    );
  } 

}