import 'package:flutter/material.dart';
import 'package:flutter_application_0/utils/routess.dart';

class account2 extends StatelessWidget {
  const account2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffcb01),
      appBar: AppBar(
        backgroundColor: Color(0xffffcb01),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: ListView(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Row(children: [
                    SizedBox(height: 100),
                    Padding(padding: EdgeInsets.all(15)),
                    Text("Enter the verification code",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                  ]),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      width: 300,
                      height: 300,
                      color: Colors.white,
                      child: const Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(20),
                            child: Text(
                                "Enter the 6-digit code we have sent  to xyz@gmail.com",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xff000000),
                                  fontWeight: FontWeight.w500,
                                )),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 10,
                            ),
                            child: Text(
                              "Resend code",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, MyRoutes.firstappRoute);
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(200, 20),
                        primary: Color.fromARGB(1, 48, 46, 45),
                        onPrimary: Colors.white,
                      ),
                      child: Text("Conform")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
