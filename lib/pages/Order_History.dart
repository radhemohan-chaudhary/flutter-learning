import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_0/widgets/HistoryBarWedget.dart';

class Order_History extends StatelessWidget {
  const Order_History({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffcc00),
      body: ListView(
        children: [
          HistoryBarWedget(),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Placeholder(
              fallbackHeight: 377,
              color: Colors.transparent,
              child: _history(),
            ),
          ),
          SizedBox(
            height: 150,
            width: double.infinity,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Container(
                  child: Text(
                    "Taste your tasteful history in this exclusive zone.",
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

class _history extends StatefulWidget {
  const _history({super.key});

  @override
  State<_history> createState() => __historyState();
}

class __historyState extends State<_history> {
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
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                          "Caffe latte,muffin...",
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
                Opacity(
                  opacity: 0.5,
                  child: Text(
                    "27 July",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
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
      // Opacity(opacity: 0.5, child: Divider()),
    );
  }
}
