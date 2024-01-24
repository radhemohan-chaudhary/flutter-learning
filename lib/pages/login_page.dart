import 'package:flutter/material.dart';
import 'package:flutter_application_0/utils/routess.dart';
class LoginPage extends StatefulWidget {
  const LoginPage ({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name="";
  bool changeButton=false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
             "assets/images/logo.jpg",
             fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Text(
              "welcome $name",
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
                onChanged: (value){
                  name=value;
                  setState(() {} );
                },
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter password",
                  labelText: "Password",
                ),
              ),
              SizedBox(height: 20,),
                  InkWell(
                    
                    onTap: () async {
                      setState(() {
                        changeButton=true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.orderhistoryRoute);
                    },
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  width:changeButton? 50: 150,
                  height: 50,
                  alignment:Alignment.center,
                  child:changeButton? Icon(Icons.done,color: Colors.white,) : Text("login",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  ),
                  decoration: BoxDecoration(
                  color: Color(0xffffcc00),
                  borderRadius: BorderRadius.circular(changeButton? 50:10),
                  ),
                ),
              ),
              ],
            ),
          ),
          ],
        ),
      ),
      
    );
  }
}  