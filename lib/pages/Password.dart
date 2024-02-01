import 'package:flutter/material.dart';
import 'package:flutter_application_0/utils/routess.dart';
import 'package:flutter_application_0/widgets/RecoveryBarWidget.dart';

class Recovery extends StatelessWidget {
  const Recovery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffcc00),
      body: ListView(children: [
        RecoveryBarWidget(),
        Placeholder(
          fallbackHeight: 650,
          color: Colors.transparent,
          child: _recovery(),
        )
      ]),
    );
  }
}

class _recovery extends StatelessWidget {
  const _recovery({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Placeholder(
          fallbackHeight: 250,
          color: Colors.transparent,
        ),
        Padding(
          padding: EdgeInsets.all(60),
          child: Text(
            "Enter your email. A confirmation code will be send to it.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ),
        Text(
          "Enter Your email",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(30),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: TextFormField(
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                filled: true,
                fillColor: Colors.white,
                border: InputBorder.none,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                    context, MyRoutes.recoveryverificationRoute);
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size(400, 45),
                primary: Color(0xff302e2d),
                onPrimary: Colors.white,
              ),
              child: Text("Get Code")),
        ),
      ],
    );
  }
}
