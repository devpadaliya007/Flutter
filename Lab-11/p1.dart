 import 'package:flutter/material.dart';

class MyListView extends StatefulWidget {
  const MyListView({super.key});

  @override
  State<MyListView> createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  List<int> numbers = [1000, 2000, 3000, 4000, 5000];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Numbers List:')),
      body: ListView(
        children: numbers.map((number) {
          return ListTile(
            title: Text(number.toString()),
          );
        }).toList(),
      ),
    );
  }
}