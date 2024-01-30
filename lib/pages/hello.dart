import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_0/utils/routess.dart';
import 'package:flutter_application_0/widgets/AppBarWidget.dart';

class hello extends StatelessWidget {
  const hello({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffcb01),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SafeArea(
          child: ListView(
            children: [
              AppBarWidget(),
              SizedBox(height: 15),
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: ("Search what you want... "),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      filled: true,
                      fillColor: Colors.white,
                      border: InputBorder.none),
                ),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  SizedBox(width: 15),
                  Text("Popular Items",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  SizedBox(width: 180),
                  Opacity(
                    opacity: 0.5,
                    child: Text("See More", style: TextStyle(fontSize: 12)),
                  ),
                ],
              ),
              Image.asset(
                "assets/images/food.png",
                width: 280,
                height: 200,
              ),
              Row(
                children: [
                  SizedBox(width: 15),
                  Text("Offers Today",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  SizedBox(width: 180),
                  Opacity(
                    opacity: 0.5,
                    child: Text("See More", style: TextStyle(fontSize: 12)),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Image.asset(
                "assets/images/food.png",
                height: 200,
                width: 280,
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 0),
        child: Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(80),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 10,
                offset: Offset(0, 3),
              )
            ],
          ),
          child: FloatingActionButton(
            shape: CircleBorder(),
            backgroundColor: Color(0xff2a2828),
            onPressed: () => Navigator.pushNamed(context, MyRoutes.cartRoute),
            child: Icon(
              CupertinoIcons.rectangle_grid_2x2_fill,
              color: Colors.white,
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xff2a2828),
        surfaceTintColor: Color(0xff2a2828),
        notchMargin: 10,
        shape: CircularNotchedRectangle(),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () => Navigator.pushNamed(context, MyRoutes.firstappRoute),
              child: Container(
                height: 40,
                width: 40,
                padding: EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                  color: Color(0xff2a2828),
                ),
                child: Icon(
                  CupertinoIcons.house_fill,
                  color: Colors.white,
                ),
              ),
            ),
            InkWell(
              onTap: () => Navigator.pushNamed(context, MyRoutes.personalRoute),
              child: Container(
                height: 40,
                width: 40,
                padding: EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                  color: Color(0xff2a2828),
                ),
                child: Icon(
                  CupertinoIcons.heart_fill,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              width: 50,
            ),
            InkWell(
              onTap: () => Navigator.pushNamed(context, MyRoutes.cartRoute),
              child: Container(
                height: 40,
                width: 40,
                padding: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                  color: Color(0xff2a2828),
                ),
                child: Icon(
                  CupertinoIcons.bag_fill,
                  color: Colors.white,
                ),
              ),
            ),
            InkWell(
              onTap: () => Navigator.pushNamed(context, MyRoutes.userRoute),
              child: Container(
                height: 40,
                width: 40,
                padding: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(color: Color(0xff2a2828)),
                child: Icon(
                  CupertinoIcons.person_fill,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
