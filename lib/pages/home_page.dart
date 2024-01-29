

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_0/utils/routess.dart';
import 'package:flutter_application_0/widgets/AppBarWidget.dart';


class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override


  Widget build(BuildContext context) {
    
    return  Scaffold(
      backgroundColor: Color(0xffffcc00),
       
        body:ListView(
         
          children:[
            AppBarWidget(),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15,
            vertical: 10
            ),
            child: Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  )
                ]
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Row(children: [
                  Icon(CupertinoIcons.search,
                  color: Color(0xff968b7b),
                  ),
                  Container(
                    height: 60,
                    width: 300,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15,

                        ),
                        
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Find what you want...",
                            border: InputBorder.none,
                          ),
                        ),
                    
                    ),

                  ),
                ]),
                ),
            ),
            )



          ]
        ),
        floatingActionButton: Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
                color: Colors.white,
                 borderRadius: BorderRadius.circular(60),
                 boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  )

                 ],
              ),
              child:FloatingActionButton(
          shape: CircleBorder(),
          backgroundColor: Color(0xff4a2828),
          onPressed:()=>Navigator.pushNamed(context, MyRoutes.cartRoute),
          child: Icon(
            CupertinoIcons.cart,
            color: Colors.white,
          ),
        
        ),
        
        )
      );
  }
}