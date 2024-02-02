import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_0/utils/routess.dart';
import 'package:flutter_application_0/widgets/SettingBarWidget.dart';

class pchange extends StatelessWidget {
  const pchange({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffcc00),
      body: ListView(
        children: [
          settingBarWidget(),
          Padding(
            padding: const EdgeInsets.all(40),
            child: Container(
              height: 500,
              decoration: BoxDecoration(
                color: Color(0xffffcc00),
                shape: BoxShape.rectangle,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.all(10)),
                      Text("Enter new password",
                          style: TextStyle(fontSize: 16)),
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
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.all(10)),
                      Text("Confirm password", style: TextStyle(fontSize: 16)),
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
                  SizedBox(
                    height: 35,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(
                            context, MyRoutes.pverificationRoute);
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(400, 45),
                        primary: Color(0xffff7f50),
                        onPrimary: Colors.white,
                      ),
                      child: Text("Update password")),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
