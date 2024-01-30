import 'package:flutter/material.dart';
import 'package:flutter_application_0/pages/home_page.dart';
import 'package:flutter_application_0/utils/routess.dart';

class account1 extends StatelessWidget {
  const account1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffcb01),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Create account",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xffffcb01),
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.all(10)),
                      Text("Full Name", style: TextStyle(fontSize: 16)),
                    ],
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(color: Colors.white))),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.all(10)),
                      Text("Email", style: TextStyle(fontSize: 16)),
                    ],
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(color: Colors.white))),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.all(10)),
                      Text("Password", style: TextStyle(fontSize: 16)),
                    ],
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(color: Colors.white))),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.all(10)),
                      Text("Birth Date", style: TextStyle(fontSize: 16)),
                    ],
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(color: Colors.white))),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.all(10)),
                      Text("Gender", style: TextStyle(fontSize: 16)),
                    ],
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(color: Colors.white))),
                  ),
                  SizedBox(height: 35),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(
                            context, MyRoutes.verificationRoute);
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(400, 45),
                        primary: Color.fromARGB(255, 232, 149, 149),
                        onPrimary: Colors.white,
                      ),
                      child: Text("Sign Up")),
                  SizedBox(height: 8),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => homepage(),
                            ));
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(400, 45),
                        onPrimary: Colors.black,
                      ),
                      child: Text("Sign up with")),
                  const Divider(
                    color: Colors.white,
                    height: 20,
                    thickness: 2,
                  ),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.fromLTRB(55, 10, 20, 30)),
                      Text("Have an account?", style: TextStyle(fontSize: 13)),
                      SizedBox(width: 3),
                      Text("Log in",
                          style: TextStyle(
                              fontSize: 13,
                              color: Color.fromARGB(255, 228, 98, 98))),
                    ],
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
