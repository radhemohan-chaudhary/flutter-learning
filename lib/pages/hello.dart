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
                child: Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.search,
                          size: 35,
                        ),
                        hintText: ("Search what you want... "),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        filled: true,
                        // fillColor: Colors.white,
                        border: InputBorder.none),
                  ),
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
                    child: TextButton(
                      onPressed: () {
                        // Navigator.pushNamed(context, MyRoutes.pchangeRoute);
                      },
                      child: Text("See More",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                          )),
                    ),
                    // Text("See More", style: TextStyle(fontSize: 12)),
                  ),
                ],
              ),
              Container(
                height: 200,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(width: 17),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xffa9411d)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: CircleAvatar(
                                radius: 45,
                                backgroundColor: Colors.white,
                                backgroundImage: AssetImage(
                                  "assets/images/Yakisoba Noodles.jpg",
                                ),
                              ),
                            ),
                            Text(
                              "Yakisoba Noodles",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Noodles with pork",
                              style: TextStyle(
                                fontSize: 8,
                                fontWeight: FontWeight.bold,
                                color: Color(0xfff8bf40),
                              ),
                            ),
                            Text(
                              "Rs.100.00",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            InkWell(
                              onTap: () => Navigator.pushNamed(
                                  context, MyRoutes.cartRoute),
                              child: Icon(
                                CupertinoIcons.bag_fill,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xffa9411d)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: CircleAvatar(
                                radius: 45,
                                backgroundColor: Colors.white,
                                backgroundImage: AssetImage(
                                  "assets/images/biryani.jpeg",
                                ),
                              ),
                            ),
                            Text(
                              "Chicken Biryani",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Kathmandu Biryani Ghar",
                              style: TextStyle(
                                fontSize: 8,
                                fontWeight: FontWeight.bold,
                                color: Color(0xfff8bf40),
                              ),
                            ),
                            Text(
                              "Rs.150.00",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            InkWell(
                              onTap: () => Navigator.pushNamed(
                                  context, MyRoutes.cartRoute),
                              child: Icon(
                                CupertinoIcons.bag_fill,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xffa9411d)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: CircleAvatar(
                                radius: 45,
                                backgroundColor: Colors.white,
                                backgroundImage: AssetImage(
                                  "assets/images/burger.jpeg",
                                ),
                              ),
                            ),
                            Text(
                              "Chicken Burger",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Burger Express",
                              style: TextStyle(
                                fontSize: 8,
                                fontWeight: FontWeight.bold,
                                color: Color(0xfff8bf40),
                              ),
                            ),
                            Text(
                              "Rs.120.00",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            InkWell(
                              onTap: () => Navigator.pushNamed(
                                  context, MyRoutes.cartRoute),
                              child: Icon(
                                CupertinoIcons.bag_fill,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xffa9411d)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: CircleAvatar(
                                radius: 45,
                                backgroundColor: Colors.white,
                                backgroundImage: AssetImage(
                                  "assets/images/burger2.jpeg",
                                ),
                              ),
                            ),
                            Text(
                              "Buff Burger",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Burger Express",
                              style: TextStyle(
                                fontSize: 8,
                                fontWeight: FontWeight.bold,
                                color: Color(0xfff8bf40),
                              ),
                            ),
                            Text(
                              "Rs.110.00",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            InkWell(
                              onTap: () => Navigator.pushNamed(
                                  context, MyRoutes.cartRoute),
                              child: Icon(
                                CupertinoIcons.bag_fill,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xffa9411d)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: CircleAvatar(
                                radius: 45,
                                backgroundColor: Colors.white,
                                backgroundImage: AssetImage(
                                  "assets/images/Coconut Chicken curry.jpg",
                                ),
                              ),
                            ),
                            Text(
                              "Coconut Chicken Curry",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Lalitpur Khana Ghar",
                              style: TextStyle(
                                fontSize: 8,
                                fontWeight: FontWeight.bold,
                                color: Color(0xfff8bf40),
                              ),
                            ),
                            Text(
                              "Rs.250.00",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            InkWell(
                              onTap: () => Navigator.pushNamed(
                                  context, MyRoutes.cartRoute),
                              child: Icon(
                                CupertinoIcons.bag_fill,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xffa9411d)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: CircleAvatar(
                                radius: 45,
                                backgroundColor: Colors.white,
                                backgroundImage: AssetImage(
                                  "assets/images/fry.jpeg",
                                ),
                              ),
                            ),
                            Text(
                              "French Fry",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Upper Ground Khaja Ghar",
                              style: TextStyle(
                                fontSize: 8,
                                fontWeight: FontWeight.bold,
                                color: Color(0xfff8bf40),
                              ),
                            ),
                            Text(
                              "Rs.80.00",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            InkWell(
                              onTap: () => Navigator.pushNamed(
                                  context, MyRoutes.cartRoute),
                              child: Icon(
                                CupertinoIcons.bag_fill,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xffa9411d)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: CircleAvatar(
                                radius: 45,
                                backgroundColor: Colors.white,
                                backgroundImage: AssetImage(
                                  "assets/images/kc2.png",
                                ),
                              ),
                            ),
                            Text(
                              "Chicken Khana Set",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Lalitpur Khana Ghar",
                              style: TextStyle(
                                fontSize: 8,
                                fontWeight: FontWeight.bold,
                                color: Color(0xfff8bf40),
                              ),
                            ),
                            Text(
                              "Rs.300.00",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            InkWell(
                              onTap: () => Navigator.pushNamed(
                                  context, MyRoutes.cartRoute),
                              child: Icon(
                                CupertinoIcons.bag_fill,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
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
                    child: TextButton(
                      onPressed: () {
                        // Navigator.pushNamed(context, MyRoutes.pchangeRoute);
                      },
                      child: Text("See More",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                          )),
                    ),
                  ),
                ],
              ),

              Container(
                height: 200,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(width: 17),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xffa9411d)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: CircleAvatar(
                                radius: 45,
                                backgroundColor: Colors.white,
                                backgroundImage: AssetImage(
                                  "assets/images/m1.jpeg",
                                ),
                              ),
                            ),
                            Text(
                              "Chicken Momo Steam",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Upper Ground Khana Ghar",
                              style: TextStyle(
                                fontSize: 8,
                                fontWeight: FontWeight.bold,
                                color: Color(0xfff8bf40),
                              ),
                            ),
                            Text(
                              "Rs.130.00",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            InkWell(
                              onTap: () => Navigator.pushNamed(
                                  context, MyRoutes.cartRoute),
                              child: Icon(
                                CupertinoIcons.bag_fill,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xffa9411d)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: CircleAvatar(
                                radius: 45,
                                backgroundColor: Colors.white,
                                backgroundImage: AssetImage(
                                  "assets/images/m2.jpg",
                                ),
                              ),
                            ),
                            Text(
                              "Buff Momo Steam",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Lower Ground Khaja Ghar",
                              style: TextStyle(
                                fontSize: 8,
                                fontWeight: FontWeight.bold,
                                color: Color(0xfff8bf40),
                              ),
                            ),
                            Text(
                              "Rs.120.00",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            InkWell(
                              onTap: () => Navigator.pushNamed(
                                  context, MyRoutes.cartRoute),
                              child: Icon(
                                CupertinoIcons.bag_fill,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xffa9411d)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: CircleAvatar(
                                radius: 45,
                                backgroundColor: Colors.white,
                                backgroundImage: AssetImage(
                                  "assets/images/mk1.jpeg",
                                ),
                              ),
                            ),
                            Text(
                              "Mutton Khana Set",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Baje Ko Bhansa Ghar",
                              style: TextStyle(
                                fontSize: 8,
                                fontWeight: FontWeight.bold,
                                color: Color(0xfff8bf40),
                              ),
                            ),
                            Text(
                              "Rs.350.00",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            InkWell(
                              onTap: () => Navigator.pushNamed(
                                  context, MyRoutes.cartRoute),
                              child: Icon(
                                CupertinoIcons.bag_fill,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xffa9411d)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: CircleAvatar(
                                radius: 45,
                                backgroundColor: Colors.white,
                                backgroundImage: AssetImage(
                                  "assets/images/n1.jpg",
                                ),
                              ),
                            ),
                            Text(
                              "Thai Fry Noodles",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Noodles with pork",
                              style: TextStyle(
                                fontSize: 8,
                                fontWeight: FontWeight.bold,
                                color: Color(0xfff8bf40),
                              ),
                            ),
                            Text(
                              "Rs.120.00",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            InkWell(
                              onTap: () => Navigator.pushNamed(
                                  context, MyRoutes.cartRoute),
                              child: Icon(
                                CupertinoIcons.bag_fill,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xffa9411d)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: CircleAvatar(
                                radius: 45,
                                backgroundColor: Colors.white,
                                backgroundImage: AssetImage(
                                  "assets/images/n2.jpeg",
                                ),
                              ),
                            ),
                            Text(
                              "Noodles",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Noodles with pork",
                              style: TextStyle(
                                fontSize: 8,
                                fontWeight: FontWeight.bold,
                                color: Color(0xfff8bf40),
                              ),
                            ),
                            Text(
                              "Rs.130.00",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            InkWell(
                              onTap: () => Navigator.pushNamed(
                                  context, MyRoutes.cartRoute),
                              child: Icon(
                                CupertinoIcons.bag_fill,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xffa9411d)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: CircleAvatar(
                                radius: 45,
                                backgroundColor: Colors.white,
                                backgroundImage: AssetImage(
                                  "assets/images/n3.jpg",
                                ),
                              ),
                            ),
                            Text(
                              "Noodles",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Noodles with pork",
                              style: TextStyle(
                                fontSize: 8,
                                fontWeight: FontWeight.bold,
                                color: Color(0xfff8bf40),
                              ),
                            ),
                            Text(
                              "Rs.140.00",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            InkWell(
                              onTap: () => Navigator.pushNamed(
                                  context, MyRoutes.cartRoute),
                              child: Icon(
                                CupertinoIcons.bag_fill,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xffa9411d)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: CircleAvatar(
                                radius: 45,
                                backgroundColor: Colors.white,
                                backgroundImage: AssetImage(
                                  "assets/images/pizza.jpg",
                                ),
                              ),
                            ),
                            Text(
                              "Chicken Spicy Pizza",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Burger House",
                              style: TextStyle(
                                fontSize: 8,
                                fontWeight: FontWeight.bold,
                                color: Color(0xfff8bf40),
                              ),
                            ),
                            Text(
                              "Rs.370.00",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            InkWell(
                              onTap: () => Navigator.pushNamed(
                                  context, MyRoutes.cartRoute),
                              child: Icon(
                                CupertinoIcons.bag_fill,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // SizedBox(height: 15),
              // Image.asset(
              //   "assets/images/food.png",
              //   height: 200,
              //   width: 280,
              // ),
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
