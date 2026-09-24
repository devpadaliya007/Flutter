import 'package:flutter/material.dart';

class Simple3DPageView extends StatelessWidget {
  const Simple3DPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple 3D PageView"),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: PageView(
        controller: PageController(
          initialPage: 1,
          viewportFraction: 0.75,
        ),
        scrollDirection: Axis.horizontal,
        children: [
          buildPage("Page 1", Colors.greenAccent),
          buildPage("Page 2", Colors.lightBlueAccent),
          buildPage("Page 3", Colors.orangeAccent),
          buildPage("Page 4", Colors.purpleAccent),
        ],
      ),
    );
  }

  Widget buildPage(String title, Color color) {
    return Card(
      elevation: 8,
      margin: const EdgeInsets.all(20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      color: color,
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 28,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
