import 'package:flutter/material.dart';
import 'package:flutter_application_0/pages/first.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffffcb01),
        appBar: AppBar(
          backgroundColor: Color(0xffffcb01),
        ),
        body: ListView(padding: EdgeInsets.all(20), children: [
          Padding(padding: EdgeInsets.symmetric(horizontal: 50, vertical: 5)),
          Image.asset(
            "assets/images/log.png",
            height: 200,
            width: 200,
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.all(55)),
              Text(
                "Welcome",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
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
          TextFormField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.email_outlined),
                hintText: ("Enter your username"),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(color: Colors.white))),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Padding(padding: EdgeInsets.all(10)),
              Text("Password", style: TextStyle(fontSize: 15)),
            ],
          ),
          TextFormField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.email_outlined),
                hintText: ("Enter your password"),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(color: Colors.white))),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Padding(padding: EdgeInsets.all(10)),
              Text("Forgot Password?", style: TextStyle(fontSize: 15)),
            ],
          ),
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
                primary: Color.fromARGB(255, 232, 149, 149),
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
              // fixedSize: Size(100, 45),
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
              Text("Sign up",
                  style: TextStyle(
                      fontSize: 13, color: Color.fromARGB(255, 228, 98, 98))),
            ],
          ),
        ]));
  }
}
