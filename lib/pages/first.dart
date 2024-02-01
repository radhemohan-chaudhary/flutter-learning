import 'package:flutter/material.dart';
import 'package:flutter_application_0/utils/routess.dart';

class firstapp extends StatelessWidget {
  const firstapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffcb01),
      // appBar: AppBar(
      //   backgroundColor: Color(0xffffcb01),
      // ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            children: [
              Placeholder(
                fallbackHeight: 60,
                color: Colors.transparent,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.helloRoute);
                },
                child: Container(
                  height: 180,
                  width: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/first.jpg"),
                        fit: BoxFit.cover),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Text(
                  "Have a tasty treat brought to you!",
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 6),
              InkWell(
                onTap: () {
                  // Navigator.pushNamed(context, MyRoutes.helloRoute);
                },
                child: Container(
                  height: 180,
                  width: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/second.jpg"),
                        fit: BoxFit.cover),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Text(
                  "Create your own magic!",
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 6),
              InkWell(
                onTap: () {
                  // Navigator.pushNamed(context, MyRoutes.helloRoute);
                },
                child: Container(
                  height: 180,
                  width: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/third.png"),
                        fit: BoxFit.cover),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      )
                    ],
                  ),
                ),
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

class RaisedButton {}
