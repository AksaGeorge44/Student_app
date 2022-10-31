
import 'package:flutter/material.dart';
import 'package:studentapp/screens/login.dart';
import 'package:studentapp/screens/register.dart';
class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);
  TextEditingController name=TextEditingController();
  TextEditingController admno=TextEditingController();
  TextEditingController rollno=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Column(
            children: [
              SizedBox(height: 20,),
              TextField(
                controller: name,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.abc_rounded),
                    labelText: "name",
                    hintText: "enter name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                ),
              ),
              SizedBox(height: 20,),
              TextField(controller: admno,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.abc_rounded),
                    labelText: "admno",
                    hintText: "enter admno",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                ),),
              SizedBox(height: 20,),
              TextField(
                controller: rollno,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.abc_rounded),
                    labelText: "rollno",
                    hintText: "enter rollno",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                ),
              ),
              SizedBox(height: 20,),
              SizedBox(child: RaisedButton(onPressed: (){
                var getname=name.text;
                var getadmno=admno.text;
                var getrollno=rollno.text;
                print(getname);
                print(getadmno);
                print(getrollno);

              },

                child: Text("register"),
                color: Colors.blue,
              ),),
              SizedBox(height: 20,),
              RaisedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));

              },
                child: Text("login"),
                color: Colors.blue,
              )

            ],
          ),
        ),
      ),
    );
  }
}