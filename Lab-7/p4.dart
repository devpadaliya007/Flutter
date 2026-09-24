import 'package:flutter/material.dart';

class networkimg extends StatelessWidget {
  const networkimg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(" Birthday Wishes"),
          centerTitle: true
      ),
      body:Stack(
          children: [
            Image.network("https://thumbs.dreamstime.com/b/elegant-birthday-card-featuring-happy-birthday-message-golden-text-elegant-birthday-card-showcases-vibrant-watercolor-362018281.jpg",fit: BoxFit.cover,height: double.infinity,width: double.infinity,),
            Positioned(top: 450,
              left: 80,
              child: Text("I hope you have a wonderful day filled with joy, laughter, and celebration.",style: TextStyle(fontSize: 25,color: Colors.greenAccent),),
            )
          ]
      ),
    );
  }
}