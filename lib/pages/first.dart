import 'package:flutter/material.dart';

class firstapp extends StatelessWidget {
  const firstapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffcb01),
      appBar: AppBar(
        backgroundColor: Color(0xffffcb01),
      ),
      body: ListView(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset("assets/images/first.jpg",
                width: 300.0, height: 180.0, fit: BoxFit.cover),
          ),
          Text("Have a tasty treat brought to you!"),
          SizedBox(height: 6),
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset("assets/images/second.jpg",
                width: 300.0, height: 180.0, fit: BoxFit.cover),
          ),
          Text("Create your own magic!"),
          SizedBox(height: 6),
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset("assets/images/third.png",
                width: 300.0, height: 180.0, fit: BoxFit.cover),
          ),
          Text("Feeling taste bud tangled?"),
          Text("We're here to unscramble the options.")
        ],
      ),
    );
  }
}
