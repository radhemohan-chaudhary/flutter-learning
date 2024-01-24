import 'package:flutter/material.dart';
import 'package:flutter_application_0/widgets/drawer.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xffffcc00),
        appBar: AppBar(
          title: Text("My Cart",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          ),
          backgroundColor: Color(0xffffcc00),
        ),
        body: Center(
          child: Container(
            child: Text("Cart's empty,keep feasting!...",
             style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
             ),
            
            ),
          ),
        ),
        drawer: MyDrawer(),
      
      );
  }
}