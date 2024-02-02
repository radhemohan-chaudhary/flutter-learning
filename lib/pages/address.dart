// import 'package:flutter/material.dart';

// class address extends StatelessWidget {
//   address({super.key});
//   final List addressList = [
//     {"name": "HOME", "location": "Kshitiz Marg"},
//     {"name": "WORK", "location": "KATHFORD COLLEGE"}
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Color(0xffffcb01),
//         appBar: AppBar(
//           title: const Text(
//             "My Addresses",
//             style: TextStyle(fontWeight: FontWeight.bold),
//           ),
//           centerTitle: true,
//           backgroundColor: Color(0xffffcb01),
//         ),
//         body: ListView(
//           children: [
//             SizedBox(
//               height: 50,
//             ),
//             for (var addr in addressList)
//               Padding(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
//                 child: Container(
//                   height: 100,
//                   decoration: BoxDecoration(
//                     shape: BoxShape.rectangle,
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                   child: Text(
//                     addr["name"],
//                     textAlign: TextAlign.center,
//                   ),
//                 ),
//               ),
//           ],
//         ));
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_0/utils/routess.dart';
import 'package:flutter_application_0/widgets/AddressBar.dart';

class address extends StatelessWidget {
  const address({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffcc00),
      body: ListView(
        children: [
          addressbar(),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 40, right: 40),
            child: Placeholder(
              fallbackHeight: 520,
              child: _address(),
              color: Colors.transparent,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.newaddressRoute);
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(400, 45),
                  primary: Color(0xffff7f50),
                  onPrimary: Colors.white,
                ),
                child: Text("Add New Address")),
          ),
        ],
      ),
    );
  }
}

class _address extends StatefulWidget {
  const _address({super.key});

  @override
  State<_address> createState() => __addressState();
}

class __addressState extends State<_address> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Container(
          height: 110,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    CupertinoIcons.house_fill,
                    size: 35,
                    color: Colors.black,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, bottom: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "HOME",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        Text(
                          "Lalitpur",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                        Container(
                          width: 150,
                          child: Opacity(
                            opacity: 0.5,
                            child: Text(
                              "Thaiba,Godawari MidCity Hospital",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, MyRoutes.newaddressRoute);
                      },
                      icon: Icon(
                        Icons.drive_file_rename_outline,
                        size: 35,
                        color: Colors.black,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        CupertinoIcons.delete,
                        size: 35,
                        color: Colors.redAccent,
                      ))
                ]),
          ),
        ),
      ),
    );
  }
}
