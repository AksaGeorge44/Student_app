import 'package:flutter/material.dart';
import 'package:studentapp/screens/contact.dart';
import 'package:studentapp/screens/home.dart';
import 'package:studentapp/screens/profile.dart';

class StudentsList extends StatefulWidget {
  const StudentsList({Key? key}) : super(key: key);

  @override
  State<StudentsList> createState() => _StudentsListState();
}

class _StudentsListState extends State<StudentsList> {
  int _currentindex=0;
  List mypages=[Home(),Contact(),Profile()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:mypages[_currentindex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index){
            this.setState(() {
              _currentindex=index;
            });
          },
            currentIndex: _currentindex,
            items: [
              BottomNavigationBarItem(
                  label: "home",
                  icon: Icon(Icons.account_box_outlined)),
              BottomNavigationBarItem(
                  label: "contact",
                  icon: Icon(Icons.account_box)),
              BottomNavigationBarItem(
                  label: "profile",
                  icon: Icon(Icons.account_box_outlined))
            ]),
      ),
    );
  }
}
