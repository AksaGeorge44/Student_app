
import 'package:flutter/material.dart';
import 'package:studentapp/screens/mydrawer.dart';

class SideBar extends StatelessWidget {
  SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home: Scaffold(
    appBar: AppBar(


  ),
  drawer: MyDrawer(),

  body: Container(

  ),
    ),
    );
  }
}
