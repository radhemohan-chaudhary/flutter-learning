import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_0/widgets/SettingBarWidget.dart';

class setnotification extends StatefulWidget {
  const setnotification({super.key});
  // bool isSwitched = false;

  @override
  State<setnotification> createState() => _setnotificationState();
}

class _setnotificationState extends State<setnotification> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffcc00),
      body: ListView(
        children: [
          settingBarWidget(),
          Padding(
            padding: const EdgeInsets.all(50),
            child: Placeholder(
              fallbackHeight: 200,
              color: Colors.transparent,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            "Enable Notification",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w100,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Switch(
                          value: isSwitched,
                          onChanged: (value) {
                            setState(() {
                              isSwitched = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 35, bottom: 10, top: 10),
                          child: Text(
                            "Notification tone",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w100,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Opacity(
                          opacity: 0.5,
                          child: TextButton(
                            onPressed: () {},
                            child: Text("Default",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                )),
                          ),
                        ),
                        Icon(CupertinoIcons.forward)
                      ],
                    ),
                  )
                ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
