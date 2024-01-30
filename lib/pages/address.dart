import 'package:flutter/material.dart';

class address extends StatelessWidget {
  address({super.key});
  final List addressList = [
    {"name": "HOME", "location": "Kshitiz Marg"},
    {"name": "WORK", "location": "KATHFORD COLLEGE"}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffffcb01),
        appBar: AppBar(
          title: const Text(
            "My Addresses",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Color(0xffffcb01),
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 50,
            ),
            for (var addr in addressList)
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    addr["name"],
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
          ],
        ));
  }
}
