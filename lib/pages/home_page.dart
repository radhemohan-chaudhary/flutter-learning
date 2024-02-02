import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_0/pages/acc1.dart';
import 'package:flutter_application_0/pages/first.dart';
import 'package:flutter_application_0/utils/routess.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});
  @override
  Widget build(BuildContext context) {
    var inputDecoration = InputDecoration(
        suffixIcon: IconButton(
          icon: Icon(CupertinoIcons.eye_slash_fill),
          onPressed: () {},
        ),
        hintText: ("Enter your password"),
        contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        filled: true,
        fillColor: Colors.white,
        border: InputBorder.none);
    return Scaffold(
        backgroundColor: Color(0xffffcb01),
        body:
            ListView(padding: EdgeInsets.symmetric(horizontal: 50), children: [
          Padding(padding: EdgeInsets.symmetric(horizontal: 50, vertical: 5)),
          Placeholder(
            fallbackHeight: 100,
            color: Colors.transparent,
          ),
          Image.asset(
            "assets/images/log.png",
            height: 200,
            width: 200,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "Welcome",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.all(10)),
              Text("Email", style: TextStyle(fontSize: 15)),
            ],
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: TextFormField(
              decoration: InputDecoration(
                  // prefixIcon: Icon(Icons.email_outlined),
                  hintText: ("Enter your username"),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  filled: true,
                  fillColor: Colors.white,
                  border: InputBorder.none),
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Padding(padding: EdgeInsets.all(10)),
              Text("Password", style: TextStyle(fontSize: 15)),
            ],
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Padding(
              padding: const EdgeInsets.only(left: 0),
              child: TextFormField(
                decoration: inputDecoration,
              ),
            ),
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.all(0)),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.RecoveryRoute);
                },
                child: Text("Forgot Password?",
                    style: TextStyle(
                      fontSize: 13,
                      color: Color(0xffff7f50),
                    )),
              ),
            ],
          ),
          SizedBox(height: 10),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => firstapp(),
                    ));
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size(400, 45),
                primary: Color(0xffff7f50),
                onPrimary: Colors.white,
              ),
              child: Text("Log In")),
          SizedBox(height: 8),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => firstapp(),
                  ));
            },
            style: ElevatedButton.styleFrom(
              onPrimary: Colors.black,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Log in with"),
                SizedBox(
                  width: 10,
                ),
                Image.asset("assets/images/gmail.png", height: 20, width: 20),
              ],
            ),
          ),
          const Divider(
            color: Colors.white,
            height: 20,
            thickness: 2,
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.fromLTRB(70, 10, 20, 30)),
              Text("No account?", style: TextStyle(fontSize: 13)),
              SizedBox(width: 3),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => account1()));
                },
                child: Text("Sign up",
                    style: TextStyle(fontSize: 13, color: Color(0xffff7f50))),
              ),
            ],
          ),
        ]));
  }
}
