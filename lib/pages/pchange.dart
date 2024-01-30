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
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                          filled: true,
                          fillColor: Colors.white,
                          border: InputBorder.none),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.all(10)),
                      Text("Conform password", style: TextStyle(fontSize: 16)),
                    ],
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: TextFormField(
                      decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 5),
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
                        primary: Color.fromARGB(255, 232, 149, 149),
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
