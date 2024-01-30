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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset("assets/images/first.jpg",
                    width: 300.0, height: 180.0, fit: BoxFit.cover),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Text(
                  "Have a tasty treat brought to you!",
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 6),
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset("assets/images/second.jpg",
                    width: 300.0, height: 180.0, fit: BoxFit.cover),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Text(
                  "Create your own magic!",
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 6),
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset("assets/images/third.png",
                    width: 300.0, height: 180.0, fit: BoxFit.cover),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 0),
                child: Text(
                  "Feeling taste bud tangled?",
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Text(
                  "We're here to unscramble the options.",
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
