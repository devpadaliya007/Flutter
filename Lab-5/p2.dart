import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class textfield extends StatelessWidget {
  textfield({super.key});
  TextEditingController name =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("p2"),),
      body: Column(
        children: [
          SizedBox(height: 20,),
          Center(
            child: Container(
              width: 500,
              child: TextField(
                controller: name,
                decoration: InputDecoration(
                  label: Text("Name"),
                  hintText:"Enter Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          ElevatedButton(onPressed: () {
            print(name.text);
            name.clear();
          }, child: Text("Login")),
        ],
      ),
    );
  }
}