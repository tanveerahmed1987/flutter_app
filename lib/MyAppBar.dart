import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  
  @override
  Widget build(BuildContext context) {
    return AppBar(title: Text('Flutter'));
  }

  @override
  Size get preferredSize =>  new Size.fromHeight(AppBar().preferredSize.height);
}