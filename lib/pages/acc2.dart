import 'package:flutter/material.dart';

class account2 extends StatelessWidget {
  const account2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffffcb01),
        appBar: AppBar(
          backgroundColor: Color(0xffffcb01),
        ),
        body: Center(
            child: Column(
          children: [
            Row(children: [
              SizedBox(height: 100),
              Padding(padding: EdgeInsets.all(15)),
              Text("Enter the verification code",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            ]),
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Container(
                width: 300,
                height: 300,
                color: Colors.white,
                child: Text("Enter the 6-digit code we have sent:",
                    style: TextStyle(fontSize: 20)),
              ),
            ),
          ],
        )));
  }
}
