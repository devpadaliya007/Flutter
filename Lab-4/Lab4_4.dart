import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lab4_4 Practical"),
      ),
      body: Row(
        children: [
          Expanded(child:
          Column(
            children: [
              Expanded(child:
              Container(
                color: Colors.lightBlue,
              )
              ),
              Expanded(child:
              Container(
                color: Colors.yellow,
              ),
              ),
              Expanded(child:
              Container(
                color: Colors.pinkAccent,
              ),
              ),
            ],
          )
          ),
          Expanded(child:
          Column(
            children: [
              Expanded(child:
              Container(
                color: Colors.orangeAccent,
              )
              ),
              Expanded(child:
              Container(
                color: Colors.blueGrey,
              ),
              ),
              Expanded(child:
              Container(
                color: Colors.red,
              ),
              ),
            ],
          )
          ),
          Expanded(child:
          Column(
            children: [
              Expanded(child:
              Container(
                color: Colors.greenAccent,
              )
              ),
              Expanded(child:
              Container(
                color: Colors.purpleAccent,
              ),
              ),
              Expanded(child:
              Container(
                color: Colors.brown,
              ),
              ),
            ],
          )
          ),
        ],
      ),
    );
  }
}