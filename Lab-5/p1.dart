
import 'package:flutter/material.dart';

class p1 extends StatelessWidget {
  const p1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("p1"),),
      body: Center(
        child: Container(
          height: 200,
          width: 550,
          color: Colors.orange,
          child: Center(
            child:(
                Text
                  ("Hello World",style:TextStyle(color: Colors.tealAccent,fontSize: 50,backgroundColor: Colors.blue,
                     
                    shadows: [
                      Shadow(
                          color: Colors.lightGreenAccent,
                          blurRadius: 5,
                          offset: Offset(5, 5)
                      )
                    ]
                ),

                )
            ),
          ),
        ),
      ),
    );
  }
}
