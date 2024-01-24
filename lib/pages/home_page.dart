import 'package:flutter/material.dart';
import 'package:flutter_application_0/models/catalog.dart';
import 'package:flutter_application_0/widgets/drawer.dart';
import 'package:flutter_application_0/widgets/item_widget.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20,(index)=> CatalogModel.items[0]);
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
            itemCount: dummyList.length,
            itemBuilder:(context,index){
              return ItemWidget( 
                item: dummyList[index],
              );
            },
          ),
        ),
        drawer: MyDrawer(),
      
      );
  }
}