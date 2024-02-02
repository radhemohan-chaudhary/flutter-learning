import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_0/utils/routess.dart';
import 'package:flutter_application_0/widgets/SettingBarWidget.dart';

class setting extends StatelessWidget {
  const setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffcb01),
      body: ListView(
        children: [
          settingBarWidget(),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(40),
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        // SizedBox(
                        //   width: 50,
                        // ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, MyRoutes.pchangeRoute);
                          },
                          child: Icon(
                            CupertinoIcons.lock,
                            color: Color(0xffff7f50),
                          ),
                        ),

                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, MyRoutes.pchangeRoute);
                          },
                          child: Text("Change Password",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              )),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, MyRoutes.setnotificationRoute);
                          },
                          child: Icon(
                            CupertinoIcons.bell,
                            color: Color(0xffff7f50),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, MyRoutes.setnotificationRoute);
                          },
                          child: Text("Notifications",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              )),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        // SizedBox(
                        //   width: 50,
                        // ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, MyRoutes.pchangeRoute);
                          },
                          child: Icon(
                            CupertinoIcons.globe,
                            color: Color(0xffff7f50),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text("Language",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
