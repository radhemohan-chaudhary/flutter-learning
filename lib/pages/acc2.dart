import 'package:flutter/material.dart';
import 'package:flutter_application_0/pages/home_page.dart';
import 'package:flutter_application_0/widgets/UserBarWidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

class account2 extends StatelessWidget {
  const account2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffffcb01),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              UserBarWidget(),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                SizedBox(height: 140),
                Text("Enter the confirmation code",
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              ]),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: 350,
                  height: 400,
                  color: Colors.white,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text("Enter the 6-digit code we have sent to:",
                          style: GoogleFonts.montserrat(fontSize: 16),
                          textAlign: TextAlign.center),
                      Text("abc@gmail.com",
                          style: GoogleFonts.montserrat(fontSize: 16),
                          textAlign: TextAlign.center),
                      SizedBox(
                        height: 20,
                      ),
                      Text("Resend Code",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center),
                      SizedBox(
                        height: 30,
                      ),
                      Pinput(
                        onCompleted: (pin) => print(pin),
                        length: 6,
                        defaultPinTheme: PinTheme(
                          width: 40,
                          height: 56,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => homepage(),
                                ));
                          },
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(200, 45),
                            primary: Color(0xffff7f50),
                            onPrimary: Colors.white,
                          ),
                          child: Text("Confirm")),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
