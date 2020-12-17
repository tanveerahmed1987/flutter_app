


import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  String dobText = "Select Date of Birth";

  Future<void> _selectDob(BuildContext context) async {
      final DateTime picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101)
      );

      if (picked != null) {
        setState(() {
         dobText = "${picked.toLocal()}".split(' ')[0];
        });
      }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            
            // AppBar Section
            Container(
              color: Colors.greenAccent,
              child: Row(
                children: [
                  IconButton(icon: Icon(Icons.menu), onPressed: () => print('Menu Pressed')),
                  Text('Profile Page', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            
            // Image Section
            Container(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 50,
                    child: Image.asset('assets/images/default.jpeg', 
                      height: 150, 
                      width: 150, 
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: InkWell(
                      onTap: () => print('Add Picture pressed'),
                      child: Container(
                        height: 40, 
                        width: 40,
                        child: Icon(Icons.add_a_photo, color: Colors.white),
                        decoration: BoxDecoration(
                          color: Colors.deepOrange,
                          borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                      ),
                    )
                  ),
                ],
              ),
            ),

            // Form Section
            Container(
              child: Column(
                children: [
                  TextFormField(
                    onChanged: (text) {
                      print("First text field: $text");
                    },      
                    decoration: InputDecoration(
                      labelText: 'Enter your username'
                    ),
                  ),
                  
                  Row(
                    children: [
                      Expanded(child: Text(dobText, style: TextStyle(color: Colors.blue),)),
                      IconButton(
                        onPressed: () => _selectDob(context),
                        icon: Icon(Icons.calendar_today_sharp, color: Colors.deepOrange)
                      )
                    ]
                  ),
                  
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}