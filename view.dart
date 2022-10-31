import 'package:flutter/material.dart';

class StudentsView extends StatefulWidget {
  StudentsView({Key? key}) : super(key: key);

  @override
  State<StudentsView> createState() => _StudentsViewState();
}

class _StudentsViewState extends State<StudentsView> {
  List names=[];
  TextEditingController name=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
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
              RaisedButton(onPressed: (){
                var getname=name.text;
                this.setState(() {
                  names.add(getname);
                });
                print(getname);

              },
              child: Text("add"),
                color: Colors.blue,

              ),
              ListView.builder(
                  shrinkWrap: true,

                  itemCount: names.length,
                  itemBuilder: (context,index){
                    return Card(
                      child: ListTile(
                        trailing: GestureDetector(
                          onTap: (){
                            this.setState(() {
                              names.removeAt(index);

                            });
                          },

                            child: Icon(Icons.delete)),
                        title: Text(names[index]),
                      ),
                    );

                  }

                  )
            ],
          ),
        ),
      ),
    );
  }
}
