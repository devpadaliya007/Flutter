import 'package:flutter/material.dart';

class stackwidget extends StatelessWidget {
  const stackwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Image"),
            centerTitle: true
        ),
        body:Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/img/dog.jpg"),fit: BoxFit.cover)
              ),
            ),
            Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text('Cute Dog',style: TextStyle(fontSize: 38),),
                    SizedBox(height: 10,),
                    ElevatedButton(onPressed: () {}, child: Text("Image"))
                  ],
                ),
              ),
            ) // Image.asset("assets/img/pic-1.png"),
          ],
        )
    );
  }
}