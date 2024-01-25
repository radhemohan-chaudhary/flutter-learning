import 'package:flutter/material.dart';
import 'package:flutter_application_0/pages/Order_History.dart';
import 'package:flutter_application_0/pages/home_page.dart';
import 'package:flutter_application_0/pages/login_page.dart';
import 'package:flutter_application_0/utils/routess.dart';
import 'package:flutter_application_0/widgets/themes.dart';
void main(){
  runApp(MyApp());

}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme:MyTheme.lightTheme(context),
      darkTheme:MyTheme.darkTheme(context),
      
      initialRoute: MyRoutes.loginRoute,
      debugShowCheckedModeBanner: false,
    routes: {
      MyRoutes.homeRoute:(context) => Homepage(),
      MyRoutes.loginRoute:(context) => LoginPage(),
      MyRoutes.orderhistoryRoute:(context) => OrderHistory(),
      },
      
    );
  }
}
