import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_application_0/utils/routess.dart';
import 'package:flutter_application_0/widgets/PersonalBar.dart';

class personal extends StatelessWidget {
  const personal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffcb01),
      body: SafeArea(
        child: ListView(children: [
          personalbar(),
          _profile(),
          // SizedBox(
          //   height: 100,
          // ),
          Padding(
            padding: const EdgeInsets.all(50),
            child: Placeholder(
              child: _changes(),
              color: Colors.transparent,
            ),
          )
        ]),
      ),
    );
  }
}

class _profile extends StatefulWidget {
  const _profile({super.key});

  @override
  State<_profile> createState() => _profileState();
}

class _profileState extends State<_profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 130,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: ListView(
          children: [
            Center(
              child: Stack(
                children: [
                  Container(
                    height: 130,
                    width: 130,
                    decoration: BoxDecoration(
                        // border: Border.all(width: 2, color: Colors.white),
                        shape: BoxShape.circle,
                        color: Colors.white,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/batman.png"))),
                  ),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 0),
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            // border: Border.all(width: 2, color: Colors.white),
                            shape: BoxShape.circle,
                            color: Color(0xffb24848),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.edit,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _changes extends StatelessWidget {
  const _changes({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: 5),
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
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                filled: true,
                fillColor: Colors.white,
                border: InputBorder.none),
          ),
        ),
        SizedBox(height: 5),
        Row(
          children: [
            Padding(padding: EdgeInsets.all(10)),
            Text("Phone Number", style: TextStyle(fontSize: 16)),
          ],
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: TextFormField(
            decoration: InputDecoration(
                // hintText: "Day/Month/Year",
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                filled: true,
                fillColor: Colors.white,
                border: InputBorder.none),
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
              Navigator.pushNamed(context, MyRoutes.userRoute);
            },
            style: ElevatedButton.styleFrom(
              fixedSize: Size(400, 45),
              primary: Color(0xffff7f50),
              onPrimary: Colors.white,
            ),
            child: Text("Save Changes")),
      ],
    );
  }
}
