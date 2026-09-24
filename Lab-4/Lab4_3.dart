import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyFirstApp"),
      ),
      body: Row(
        children: [
          Expanded(child: Container(
            color: Colors.lightBlueAccent,
          )
          ),
          Expanded(child: Container(
            color: Colors.greenAccent,
          )
          ),
          Expanded(child: Container(
            color: Colors.redAccent,
          )
          ),
        ],
      ),
    );
  }
}
