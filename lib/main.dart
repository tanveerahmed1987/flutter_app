import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';

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
          color: Colors.indigo,
          child: CustomScrollView(
            slivers: [
              SliverStickyHeader(
                header: Container(padding: EdgeInsets.all(16) ,color: Colors.lightGreen, child: Text('Header 1')),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate((context, index) {
                     return Card(
                        child: ListTile(
                           title: Text('Header 1 -> $index'),
                          subtitle: Text('Sub Header 1'),
                          tileColor: Colors.white,
                       ),
                     );
                  },
                  childCount: 20),
                ),
              ),

              SliverStickyHeader(
                header: Container(padding: EdgeInsets.all(16), color: Colors.lightGreen, child: Text('Header 2')),
                // sliver: SliverFillRemaining(child: Container(child: Text('Body')),),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate((context, index) {
                     return Card(
                        child: ListTile(
                          title: Text('Header 2 -> $index'),
                          subtitle : Text('Sub Header 2 -> $index'),
                          tileColor: Colors.white,
                        ),
                     );
                  },
                  childCount: 40),
                ),
              )
            ],
          )
        )
      ),
    );
  }
}


