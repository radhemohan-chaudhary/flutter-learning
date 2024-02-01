import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_0/widgets/NotificationBar.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffcc00),
      body: ListView(
        children: [
          notificationbar(),
          Padding(
            padding: const EdgeInsets.all(40),
            child: Placeholder(
              color: Colors.transparent,
              fallbackHeight: 630,
              child: _notifications(),
            ),
          ),
        ],
      ),
    );
  }
}

class _notifications extends StatefulWidget {
  const _notifications({super.key});

  @override
  State<_notifications> createState() => __notificationsState();
}

class __notificationsState extends State<_notifications> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(bottom: 5),
        child: Container(
          height: 85,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.white),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 5),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "FoodBuddy",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "21 Jan,2024",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 230,
                        child: Text(
                          "Order from 2-5 PM and get free delivery on orders above Rs 1000.",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          CupertinoIcons.delete,
                          size: 30,
                          color: Colors.redAccent,
                        ),
                      )
                    ],
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
