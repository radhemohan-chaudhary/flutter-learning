import 'package:flutter/material.dart';
import 'package:flutter_application_0/utils/routess.dart';
import 'package:flutter_application_0/widgets/AddressBar.dart';

class newaddress extends StatelessWidget {
  const newaddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffcc00),
      body: ListView(
        children: [
          addressbar(),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Text(
              "Enter new address",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: Placeholder(
              fallbackHeight: 400,
              color: Colors.transparent,
              child: _newaddress(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 50),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.addressRoute);
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(200, 45),
                  primary: Color(0xffff7f50),
                  onPrimary: Colors.white,
                ),
                child: Text("Save")),
          ),
        ],
      ),
    );
  }
}

class _newaddress extends StatelessWidget {
  const _newaddress({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: 5),
        Row(
          children: [
            Padding(padding: EdgeInsets.all(10)),
            Text("Type", style: TextStyle(fontSize: 16)),
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
            Text("District", style: TextStyle(fontSize: 16)),
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
            Text("Town", style: TextStyle(fontSize: 16)),
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
        Row(
          children: [
            Padding(padding: EdgeInsets.all(10)),
            Text("Street", style: TextStyle(fontSize: 16)),
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
      ],
    );
  }
}
