import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_0/utils/routess.dart';

class newpassword extends StatelessWidget {
  const newpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffcc00),
      body: ListView(
        padding: EdgeInsets.all(50),
        children: [
          Placeholder(
            fallbackHeight: 100,
            color: Colors.transparent,
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Padding(padding: EdgeInsets.all(10)),
              Text("Enter new password", style: TextStyle(fontSize: 16)),
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
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 15, vertical: 15),
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
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  filled: true,
                  fillColor: Colors.white,
                  border: InputBorder.none),
            ),
          ),
          SizedBox(height: 35),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.newpsuccessRoute);
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size(400, 45),
                primary: Color(0xffff7f50),
                onPrimary: Colors.white,
              ),
              child: Text("Update password")),
        ],
      ),
    );
  }
}
