import 'package:flutter/material.dart';
import '../Lab-15/p1.dart';

class NavigationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Screen')),
      body: Center(
        child: ElevatedButton(onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (_)=>TabView()));
        }, child: Text("Hello")),
      ),
    );
  }
}