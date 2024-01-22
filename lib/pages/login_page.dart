import 'package:flutter/material.dart';
class LoginPage extends StatelessWidget {
  const LoginPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
           "assets/images/logo.jpg",
           fit: BoxFit.cover,
          ),
          SizedBox(height: 20),
          Text(
            "welcome",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(vertical:16,horizontal: 32),
          child: Column(
            children: [
               TextField(
              decoration: InputDecoration(
                hintText: "Enter username",
                labelText: "Username",
              ),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Enter password",
                labelText: "Password",
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: () {}, child: Text("Login"))
            ],
          ),
        ),
        ],
      ),
      
    );
  }
}  