import 'package:flutter/material.dart';
import 'package:studentapp/main.dart';
import 'package:studentapp/screens/contact.dart';
import 'package:studentapp/screens/home.dart';
import 'package:studentapp/screens/profile.dart';

class TabView extends StatelessWidget {
   TabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(

                tabs: [
                  Tab(text: "home",icon: Icon(Icons.account_box),),
                  Tab(text: "contact"),
                  Tab(text: "profile"),
                ]),
          ),
          body: TabBarView(
            children: [
              Home(),
              Contact(),
              Profile(),
            ],
          ),


        ),
      ),
    );
  }
}
