import 'package:flutter/material.dart';
import 'package:flutter_application_0/pages/user.dart';

class personal extends StatelessWidget {
  const personal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffcb01),
      appBar: AppBar(
        title: const Text(
          "Personal Information",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Color(0xffffcb01),
      ),
      body: SafeArea(
        child: ListView(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle)),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Text("Full Name"),
          TextFormField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              filled: true,
              fillColor: Colors.white,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(color: Colors.white),
              ),
            ),
          ),
          Text("Phone Number"),
          TextFormField(
            decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(color: Colors.white),
                )),
          ),
          Text("Email"),
          TextFormField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              filled: true,
              fillColor: Colors.white,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(color: Colors.white),
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => user(),
                    ));
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size(400, 45),
                primary: Color.fromARGB(255, 232, 149, 149),
                onPrimary: Colors.white,
              ),
              child: Text("Save Changes")),
        ]),
      ),
    );
  }
}
