import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class imgassets extends StatelessWidget {
  const imgassets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Lord Mahadev"),
          centerTitle: true
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/img/god.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
