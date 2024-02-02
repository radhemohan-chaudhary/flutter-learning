import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_0/pages/home_page.dart';
import 'package:flutter_application_0/utils/routess.dart';
import 'package:flutter_application_0/widgets/CreateBarWidget.dart';

class account1 extends StatelessWidget {
  const account1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffcb01),
      body: ListView(children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: CreateBarWedget(),
            ),
            Container(
              height: 700,
              child: ListView(
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 50),
                  children: [
                    // CreateBarWedget(),
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.all(10)),
                        Text("Full Name", style: TextStyle(fontSize: 16)),
                      ],
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),
                          filled: true,
                          fillColor: Colors.white,
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.all(10)),
                        Text("Email", style: TextStyle(fontSize: 16)),
                      ],
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),
                          filled: true,
                          fillColor: Colors.white,
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.all(10)),
                        Text("Password", style: TextStyle(fontSize: 16)),
                      ],
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: TextFormField(
                        decoration: InputDecoration(
                            suffixIcon: IconButton(
                              icon: Icon(CupertinoIcons.eye_slash_fill),
                              onPressed: () {},
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 15),
                            filled: true,
                            fillColor: Colors.white,
                            border: InputBorder.none),
                      ),
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.all(10)),
                        Text("Birth Date", style: TextStyle(fontSize: 16)),
                      ],
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "Day/Month/Year",
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 15),
                            filled: true,
                            fillColor: Colors.white,
                            border: InputBorder.none),
                      ),
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.all(10)),
                        Text("Gender", style: TextStyle(fontSize: 16)),
                      ],
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: TextFormField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 15),
                            filled: true,
                            fillColor: Colors.white,
                            border: InputBorder.none),
                      ),
                    ),
                    SizedBox(height: 35),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, MyRoutes.verificationRoute);
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(400, 45),
                          primary: Color(0xffff7f50),
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
                          Image.asset("assets/images/gmail.png",
                              height: 20, width: 20),
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
                        Padding(padding: EdgeInsets.fromLTRB(55, 10, 20, 30)),
                        Text("Have an account?",
                            style: TextStyle(fontSize: 13)),
                        SizedBox(width: 3),
                        TextButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => homepage()));
                          },
                          child: Text("Log in",
                              style: TextStyle(
                                  fontSize: 13, color: Color(0xffff7f50))),
                        ),
                      ],
                    ),
                  ]),
            ),
          ],
        ),
      ]),
    );
  }
}
