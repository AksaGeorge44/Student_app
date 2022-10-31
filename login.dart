
import 'package:flutter/material.dart';
import 'package:studentapp/screens/login.dart';
import 'package:studentapp/screens/register.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  TextEditingController uname=TextEditingController();
  TextEditingController password=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                SizedBox(height: 20,),
                TextField(
                  controller: uname,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.abc_rounded),
                      labelText: "uname",
                      hintText: "enter username",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      )
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  controller: password,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.abc_rounded),
                      labelText: "password",
                      hintText: "enter password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      )
                  ),
                ),
                SizedBox(height: 20,),
                SizedBox(child:
                RaisedButton(onPressed: (){
                  var getuname=uname.text;
                  var getpassword=password.text;
                  print(getuname);
                  print(getpassword);



                },

                  child: Text("login"),
                  color: Colors.blue,

                ),),
                SizedBox(height: 20,),
                RaisedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScreen()));

                },
                  child: Text("register"),
                  color: Colors.blue,
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}

