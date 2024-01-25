
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_0/models/catalog.dart';
import 'package:flutter_application_0/widgets/drawer.dart';
import 'package:flutter_application_0/widgets/item_widget.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override

   void initState(){
    super.initState();
    loadData();

   }

   loadData() async{
   final catalogjson= await rootBundle.loadString("assets/files/catalog.json");
   final decodedData=jsonDecode(catalogjson);
   var productData=decodedData["products"];
   CatalogModel.items= List.from(productData).map<Item>((item)=>Item.fromMap(item)).toList();
   setState(() {
     
   });
   
   }

  Widget build(BuildContext context) {
    
    return  Scaffold(
      backgroundColor: Color(0xffffcc00),
        appBar: AppBar(
          title: Text("My Cart",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
           ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemCount: CatalogModel.items.length,
            itemBuilder:(context,index){
              return ItemWidget( 
                item: CatalogModel.items[index],
              );
            },
          ),
        ),
        drawer: MyDrawer(),
      
      );
  }
}