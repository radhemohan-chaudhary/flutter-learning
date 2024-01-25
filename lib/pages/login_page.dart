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
  final _formKey = GlobalKey<FormState>();
  moveToOrder(BuildContext context) async{
    // if (_formKey.currentState!.validate()) {}
    
    setState(() {
      changeButton=true;
      });
     await Future.delayed(Duration(seconds: 1));
     await Navigator.pushNamed(context, MyRoutes.homeRoute);
     setState(() {
     changeButton=false;
    });
    
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          child: Column(
            key: _formKey,
            children: [
              Image.asset(
               "assets/images/logo.jpg",
               fit: BoxFit.cover,
              ),
              SizedBox(height: 20),
              Text(
                "Welcome $name",
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
                   TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter username",
                    labelText: "Username",
                  ),
               validator :(value){
                   if(value!.isEmpty){
                    return "Username cannot be empty";
                   }
                   return null;
                },
                  onChanged: (value){
                    name=value;
                    setState(() {} );
                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter password",
                    labelText: "Password",
                  ),
                  validator:(value){
                   if(value!.isEmpty){
                    return "Password cannot be empty";
                   }
                   else if(value.length < 6){
                    return "Password length should be atleast 6.";
                   }
                   return null;
                },
                ),
                SizedBox(height: 20,),
                    InkWell(
                      
                      onTap:()=> moveToOrder(context),
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
      ),
      
    );
  }
}  