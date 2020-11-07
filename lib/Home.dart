

import 'package:flutter/material.dart';
import './MyAppBar.dart';
import './Layout.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(
       appBar: MyAppBar(),
       body: Layout()
     );
  } 

}