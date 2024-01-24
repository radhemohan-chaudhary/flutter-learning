import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageUrl ="https://scontent.fsif1-1.fna.fbcdn.net/v/t39.30808-6/415027948_1372248303651828_3054966964609635568_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=efb6e6&_nc_ohc=sqtZUho33V0AX8LV_29&_nc_ht=scontent.fsif1-1.fna&oh=00_AfDz-JB4stPu9_Czc_yTmIMV88mbY5Hvu3O-E_s2syG8og&oe=65B5D733";
    return Drawer(
      child: Container(
        color: Colors.grey,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              
              child:UserAccountsDrawerHeader(
                accountName:Text("Radhemoahn Chaudhary"),
                 accountEmail: Text("radhechy0412@gmail.com"),
                 margin: EdgeInsets.zero,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                  ),
                 currentAccountPicture: CircleAvatar(
                   backgroundImage: NetworkImage(imageUrl),
                 ),
                 ) 
              ),
              
              ListTile(
                leading:Icon(CupertinoIcons.home,
                color: Colors.black,
                ),
                title:Text(
                  "Home",
                  textScaleFactor: 1.3,
                  style: TextStyle(
                    color:Colors.black),
                    )
              ),
               ListTile(
                leading:Icon(CupertinoIcons.profile_circled,
                color: Colors.black,
                ),
                title:Text(
                  "Profile",
                  textScaleFactor: 1.3,
                  style: TextStyle(
                    color:Colors.black),
                    )
              ),
               ListTile(
                leading:Icon(CupertinoIcons.mail,
                color: Colors.black,
                ),
                title:Text(
                  "Email me",
                  textScaleFactor: 1.3,
                  style: TextStyle(
                    color:Colors.black),
                    )
              ),
          ],
        ),
      ),
    );
  }
}