import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_0/widgets/FavouritesBar.dart';

class favourites extends StatelessWidget {
  const favourites({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffcc00),
      body: ListView(
        children: [
          favouriteBarWedget(),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Placeholder(
              fallbackHeight: 377,
              color: Colors.transparent,
              child: _favourites(),
            ),
          ),
          SizedBox(
            height: 150,
            width: double.infinity,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 30, top: 30, bottom: 30, right: 30),
                child: Container(
                  child: Text(
                    "You can add your favourites here.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _favourites extends StatefulWidget {
  const _favourites({super.key});

  @override
  State<_favourites> createState() => __historyState();
}

class __historyState extends State<_favourites> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(2.5),
        child: Container(
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  CupertinoIcons.heart_fill,
                  color: Colors.black,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Himalayan Java",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      Opacity(
                        opacity: 0.5,
                        child: Text(
                          "New Baneshwor",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 80,
                ),
                InkWell(
                  onTap: () {},
                  child: Icon(CupertinoIcons.forward),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
