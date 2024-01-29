import 'package:flutter/material.dart';

class hello extends StatelessWidget {
  const hello({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffcb01),
      appBar: AppBar(
        backgroundColor: Color(0xffffcb01),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Row(
              children: [
                SizedBox(width: 5),
                Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle)),
                SizedBox(width: 10),
                Text("Hello,Buddy",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                SizedBox(width: 110),
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                ),
              ],
            ),
            SizedBox(height: 15),
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: ("Search what you want... "),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(color: Colors.white))),
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
    );
  }
}
