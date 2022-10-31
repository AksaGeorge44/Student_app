
import 'package:flutter/material.dart';
import 'package:studentapp/screens/contact.dart';
import 'package:studentapp/screens/home.dart';
import 'package:studentapp/screens/profile.dart';

class MyDrawer extends StatelessWidget {
   MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.green,
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage("url"),
            ),
              accountName: Text("hello"),
              accountEmail: Text("aksa89@gmail.com")),
          ListTile(
            onTap: (){

              Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
            },
            leading: Icon(Icons.account_box),
            title: Text("home"),
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            onTap: (){

              Navigator.push(context, MaterialPageRoute(builder: (context)=>Contact()));

            },
            leading: Icon(Icons.abc_sharp),
            title: Text("contact"),
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            onTap: (){

              Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));

            },
            leading: Icon(Icons.abc_sharp),
            title: Text("profile"),
          ),
        ],
      ),
    );
  }
}
