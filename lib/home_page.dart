import 'package:flutter/material.dart';
class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    int days=28;
    String name="Radhemohan";
    return  Scaffold(
        appBar: AppBar(
          title: Text("First Practice"),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Container(
            child: Text("welcome to $days days of flutter by $name"),
          ),
        ),
        drawer: Drawer(),
      );
  }
}