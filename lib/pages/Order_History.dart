import 'package:flutter/material.dart';
class OrderHistory extends StatelessWidget {
  const OrderHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xffffcc00),
        appBar: AppBar(
          title: Text("Order History",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          ),
          backgroundColor: Color(0xffffcc00),
        ),
        body: Center(
          child: Container(
            child: Text("Track your tasteful history in this exclusive zone.",
            textAlign: TextAlign.center,
             style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
             ),
            
            ),
          ),
        ),
      
      );
  }
}