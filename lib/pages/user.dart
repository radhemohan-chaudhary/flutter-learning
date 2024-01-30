import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_0/utils/routess.dart';
import 'package:flutter_application_0/widgets/UserBarWidget.dart';

class user extends StatelessWidget {
  const user({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffcb01),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SafeArea(
          child: ListView(children: [
            UserBarWidget(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/batman.png")),
                        color: Colors.white,
                        shape: BoxShape.circle)),
              ],
            ),
            SizedBox(height: 10),
            Text("User Name",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontFamily: 'Poppins'),
                textAlign: TextAlign.center),
            SizedBox(height: 30),
            Container(
              height: 250,
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      Row(
                        children: [
                          InkWell(
                            onTap: () => Navigator.pushNamed(
                                context, MyRoutes.personalRoute),
                            child: Container(
                              height: 30,
                              width: 30,
                              padding: EdgeInsets.only(right: 20),
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Icon(
                                CupertinoIcons.person,
                                color: Color(0xffff7f50),
                              ),
                            ),
                          ),
                          Text("Personal Info",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 16,
                              )),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          InkWell(
                            onTap: () => Navigator.pushNamed(
                                context, MyRoutes.orderhistoryRoute),
                            child: Container(
                              height: 30,
                              width: 30,
                              padding: EdgeInsets.only(right: 20),
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Icon(
                                CupertinoIcons.tag,
                                color: Color(0xffff7f50),
                              ),
                            ),
                          ),
                          Text("Vouchers/Offers",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 16,
                              )),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          InkWell(
                            onTap: () => Navigator.pushNamed(
                                context, MyRoutes.addressRoute),
                            child: Container(
                              height: 30,
                              width: 30,
                              padding: EdgeInsets.only(right: 20),
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Icon(
                                CupertinoIcons.placemark,
                                color: Color(0xffff7f50),
                              ),
                            ),
                          ),
                          Text("Addresses",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 16,
                              )),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          InkWell(
                            onTap: () => Navigator.pushNamed(
                                context, MyRoutes.orderhistoryRoute),
                            child: Container(
                              height: 30,
                              width: 30,
                              padding: EdgeInsets.only(right: 20),
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Icon(
                                CupertinoIcons.doc_text,
                                color: Color(0xffff7f50),
                              ),
                            ),
                          ),
                          Text("Order History",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 16,
                              )),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          InkWell(
                            onTap: () => Navigator.pushNamed(
                                context, MyRoutes.homeRoute),
                            child: Container(
                              height: 30,
                              width: 30,
                              padding: EdgeInsets.only(right: 20),
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Icon(
                                CupertinoIcons.question_circle,
                                color: Color(0xffff7f50),
                              ),
                            ),
                          ),
                          Text("Help Center",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 16,
                              )),
                        ],
                      ),
                    ]),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Row(
                      children: [
                        InkWell(
                          onTap: () => Navigator.pushNamed(
                              context, MyRoutes.settingRoute),
                          child: Container(
                            height: 30,
                            width: 30,
                            padding: EdgeInsets.only(right: 20),
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Icon(
                              CupertinoIcons.gear,
                              color: Color(0xffff7f50),
                            ),
                          ),
                        ),
                        Text("Setting",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 16,
                            )),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        InkWell(
                          onTap: () =>
                              Navigator.pushNamed(context, MyRoutes.homeRoute),
                          child: Container(
                            height: 30,
                            width: 30,
                            padding: EdgeInsets.only(right: 20),
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Icon(
                              CupertinoIcons.arrow_right_square,
                              color: Color(0xffff7f50),
                            ),
                          ),
                        ),
                        Text("Logout ",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 16,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
