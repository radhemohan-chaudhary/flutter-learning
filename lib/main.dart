import 'package:flutter/material.dart';
import 'package:flutter_application_0/pages/Order_History.dart';
import 'package:flutter_application_0/pages/cart.dart';
import 'package:flutter_application_0/pages/home_page.dart';
import 'package:flutter_application_0/utils/routess.dart';
import 'package:flutter_application_0/pages/notification.dart';
import 'package:flutter_application_0/widgets/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var materialApp = MaterialApp(
      title: "FoodBuddy",
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoutes.homeRoute,
      debugShowCheckedModeBanner: false,
      routes: {
        MyRoutes.homeRoute: (context) => Homepage(),
        MyRoutes.cartRoute: (context) => CartPage(),
        MyRoutes.orderhistoryRoute: (context) => Order_History(),
        MyRoutes.notificationRoute: (context) => NotificationPage(),
      },
    );
    return materialApp;
  }
}
