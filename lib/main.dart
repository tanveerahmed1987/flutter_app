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
      appBar: AppBar( title: Text('MyHomeWidget')),
      body: Center(child: Text('Hello MyHomeWidget!', style: TextStyle( color: Colors.black, fontSize: 20.0))),
      floatingActionButton: FloatingActionButton( 
          elevation: 10.0, 
          child: Icon(Icons.add), 
          onPressed: (){ } 
      ),
      drawer: Drawer( 
        child: ListView( 
          children: const <Widget>[ 
            DrawerHeader( 
              decoration: BoxDecoration(color: Colors.green), 
              child: Text( 'Drawer Header',style: TextStyle(color: Colors.white,fontSize: 24)), 
            ), 
            ListTile(title: Text('Item 1'),leading : Icon(Icons.people)), 
            ListTile(title: Text('Item 2'), leading: Icon(Icons.mail)), 
      ],),), 
      bottomNavigationBar : BottomNavigationBar( 
        currentIndex : 0, fixedColor: Colors.green, 
        items: [ BottomNavigationBarItem(title : Text("Home"), icon : Icon(Icons.home)), 
                 BottomNavigationBarItem(title : Text("Search"), icon : Icon(Icons.search)), 
                 BottomNavigationBarItem(title : Text("Profile"), icon : Icon(Icons.account_circle))], 
        onTap: (int indexOfItem){ }
      ),
      backgroundColor: Colors.greenAccent,
    );
  }
}

