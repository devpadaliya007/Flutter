import 'package:flutter/material.dart';

class L_1 extends StatelessWidget {
  const L_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lab_4_2 Practical"),
      ),
      body: Column(
        children: [
          Expanded(child:
          Container(
            color: Colors.lightBlue,
          )
          ),
          Expanded(child:
          Container(
            color: Colors.green,
          )
          ),
          Expanded(child:
          Container(
            color: Colors.red,
          )
          ),
        ],
      ),
    );
  }
}
