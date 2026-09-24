import 'package:flutter/material.dart';

class todolist extends StatefulWidget {
  const todolist({super.key});

  @override
  State<todolist> createState() => _todolistState();
}

class _todolistState extends State<todolist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("To Do List"),backgroundColor: Colors.lightBlueAccent,centerTitle: true,
      ),
      body: Column(
        children: [
          Card(
              child: ListTile(
                title: Text("LAB-1"),
                trailing: Checkbox(value: true, onChanged: (value) {}),
              )
          ),
          SizedBox(height: 15,),
          Card(
              child: ListTile(
                title: Text("LAB-2"),
                trailing: Checkbox(value: false, onChanged: (value) {}),
              )
          ),
          SizedBox(height: 15,),
          Card(
              child: ListTile(
                title: Text("LAB-3"),
                trailing: Checkbox(value: false, onChanged: (value) {}),
              )
          ),
          Card(
              child: ListTile(
                title: Text("LAB-4"),
                trailing: Checkbox(value: false, onChanged: (value) {}),
              )
          ),
          Card(
              child: ListTile(
                title: Text("LAB-5"),
                trailing: Checkbox(value: false, onChanged: (value) {}),
              )
          ),
          Card(
              child: ListTile(
                title: Text("LAB-6"),
                trailing: Checkbox(value: false, onChanged: (value) {}),
              )
          ),
          Card(
              child: ListTile(
                title: Text("LAB-7"),
                trailing: Checkbox(value: false, onChanged: (value) {}),
              )
          ),
          Card(
              child: ListTile(
                title: Text("LAB-8"),
                trailing: Checkbox(value: false, onChanged: (value) {}),
              )
          ),
          Card(
              child: ListTile(
                title: Text("LAB-9"),
                trailing: Checkbox(value: false, onChanged: (value) {}),
              )
          ),
          Card(
              child: ListTile(
                title: Text("LAB-10"),
                trailing: Checkbox(value: false, onChanged: (value) {}),
              )
          ),
        ],
      ),
    );
  }
}