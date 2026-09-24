import 'package:flutter/material.dart';
class Feedback1 extends StatefulWidget {
  const Feedback1({super.key});

  @override
  State<Feedback1> createState() => _Feedback1State();
}

class _Feedback1State extends State<Feedback1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Lab 9"),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Center(
                  child: Text("Select feedback",
                    style: TextStyle(fontSize: 20),)
              ),
              SizedBox(
                  height: 10
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.sentiment_dissatisfied_outlined,color: Colors.redAccent,size: 30,),
                    style: IconButton.styleFrom(
                        backgroundColor: Colors.grey[200],
                        padding: EdgeInsets.all(15)
                    ),
                  ),
                  IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.sentiment_neutral,color: Colors.lightBlueAccent,size: 30,),
                    style: IconButton.styleFrom(
                        backgroundColor: Colors.grey[200],
                        padding: EdgeInsets.all(15)
                    ),
                  ),
                  IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.sentiment_satisfied_outlined,color: Colors.greenAccent,size: 30,),
                    style: IconButton.styleFrom(
                        backgroundColor: Colors.grey[200],
                        padding: EdgeInsets.all(15)
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "Give Ratings here",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  button(text: "⭐"),
                  button(text: "⭐⭐"),
                  button(text: "⭐⭐⭐"),
                  button(text: "⭐⭐⭐⭐"),
                  button(text: "⭐⭐⭐⭐⭐"),
                ],
              ),
              SizedBox(
                height: 80,
              ),
              Align(
                alignment:Alignment.centerLeft,
                child: Text("Enter your feedback "),
              ),
              TextField(
                maxLines: 5,
                decoration: InputDecoration(
                    border: OutlineInputBorder()
                ),
              ),
              ElevatedButton(onPressed: (){}, child: Text("Submit"))
            ],
          ),
        ),
      ),
    );
  }

  ElevatedButton button({required String text}){
    return ElevatedButton(
      onPressed: (){},
      child: Text(text,style: TextStyle(fontSize: 20),),
      style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          backgroundColor: Colors.grey[200],
          padding: EdgeInsets.all(10)
      ),
    );
  }
}