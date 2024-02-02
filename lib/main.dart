import 'package:flutter/material.dart';
import 'package:flutter_application_0/pages/Order_History.dart';
import 'package:flutter_application_0/pages/Password.dart';
import 'package:flutter_application_0/pages/Payment.dart';
import 'package:flutter_application_0/pages/acc1.dart';
import 'package:flutter_application_0/pages/acc2.dart';
import 'package:flutter_application_0/pages/address.dart';
import 'package:flutter_application_0/pages/cart.dart';
import 'package:flutter_application_0/pages/favourites.dart';
import 'package:flutter_application_0/pages/first.dart';
import 'package:flutter_application_0/pages/hello.dart';
import 'package:flutter_application_0/pages/home_page.dart';
import 'package:flutter_application_0/pages/new_passwoord.dart';
import 'package:flutter_application_0/pages/newaddress.dart';
import 'package:flutter_application_0/pages/newpsuccess.dart';
import 'package:flutter_application_0/pages/pchange.dart';
import 'package:flutter_application_0/pages/personal.dart';
import 'package:flutter_application_0/pages/psuccess.dart';
import 'package:flutter_application_0/pages/pverification.dart';
import 'package:flutter_application_0/pages/recoveryverification.dart';
import 'package:flutter_application_0/pages/setnotification.dart';
import 'package:flutter_application_0/pages/setting.dart';
import 'package:flutter_application_0/pages/user.dart';
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
      initialRoute: MyRoutes.accountRoute,
      debugShowCheckedModeBanner: false,
      routes: {
        MyRoutes.homeRoute: (context) => homepage(),
        MyRoutes.cartRoute: (context) => CartPage(),
        MyRoutes.orderhistoryRoute: (context) => Order_History(),
        MyRoutes.notificationRoute: (context) => NotificationPage(),
        MyRoutes.firstRoute: (context) => firstapp(),
        MyRoutes.helloRoute: (context) => hello(),
        MyRoutes.personalRoute: (context) => personal(),
        MyRoutes.accountRoute: (context) => account1(),
        MyRoutes.verificationRoute: (context) => account2(),
        MyRoutes.firstappRoute: (context) => firstapp(),
        MyRoutes.userRoute: (context) => user(),
        MyRoutes.addressRoute: (context) => address(),
        MyRoutes.settingRoute: (context) => setting(),
        MyRoutes.pchangeRoute: (context) => pchange(),
        MyRoutes.pverificationRoute: (context) => pverification(),
        MyRoutes.psuccessRoute: (context) => psuccess(),
        MyRoutes.paymentRoute: (context) => payment(),
        MyRoutes.RecoveryRoute: (context) => Recovery(),
        MyRoutes.recoveryverificationRoute: (context) => recoveryverification(),
        MyRoutes.newpasswordRoute: (context) => newpassword(),
        MyRoutes.newpsuccessRoute: (context) => newpsuccess(),
        MyRoutes.setnotificationRoute: (context) => setnotification(),
        MyRoutes.newaddressRoute: (contex) => newaddress(),
        MyRoutes.favouritesRoute: (context) => favourites(),
      },
    );
    return materialApp;
  }
}
