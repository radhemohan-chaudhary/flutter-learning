import 'package:flutter/material.dart';
import 'package:flutter_application_0/home_page.dart';

void main(){
  runApp(MyApp());

}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Homepage(),
    );
  }
}