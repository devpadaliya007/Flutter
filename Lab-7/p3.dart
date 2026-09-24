import 'package:flutter/material.dart';

class birthdaycard extends StatelessWidget {
  const birthdaycard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Image"),
            centerTitle: true
        ),
        body:Stack(
          children: [
            Image.network("https://thumbs.dreamstime.com/b/elegant-birthday-card-featuring-happy-birthday-message-golden-text-elegant-birthday-card-showcases-vibrant-watercolor-362018281.jpg",fit: BoxFit.cover,height: double.infinity,width: double.infinity,)
          ]
        ),
    );
  }
}