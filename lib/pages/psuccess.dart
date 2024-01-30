import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_0/utils/routess.dart';
import 'package:flutter_application_0/widgets/SettingBarWidget.dart';

class psuccess extends StatelessWidget {
  const psuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffcc00),
      body: ListView(
        children: [
          settingBarWidget(),
          Container(
              height: 600,
              decoration: BoxDecoration(
                color: Color(0xffffcc00),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Icon(
                    CupertinoIcons.check_mark_circled,
                    color: Color(0xff1b1b1b),
                    size: 100,
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Text(
                    "Your password has been changed successfully.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, MyRoutes.settingRoute);
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(100, 50),
                        primary: Color.fromARGB(255, 232, 149, 149),
                        onPrimary: Colors.white,
                      ),
                      child: Text(
                        "Ok",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      )),
                ],
              ))
        ],
      ),
    );
  }
}
