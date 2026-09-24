import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Quote extends StatefulWidget {
  const Quote({super.key});

  @override
  State<Quote> createState() => _QuoteState();
}

class _QuoteState extends State<Quote> {

  Widget Quotesoo({required String text,required String Other,context}){
    return Card(
      child: ListTile(
        title: Text(text,),
        subtitle: Text(Other),
        trailing: IconButton(onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("copied to clipboard")));
        }, icon: Icon(Icons.copy,color: Colors.greenAccent,)),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lab-9 P6-2"),centerTitle: true,backgroundColor: Colors.blue,),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Quotesoo(text: "Quality is not an act, it's a habit.",Other:"General Business/Motivation",context: context),
            Quotesoo(text: "Your vision, our mission.",Other:"General Business/Motivation",context: context),
            Quotesoo(text: "Innovate. Elevate. Dominate",Other:"Technology/Startup",context: context),
          ],
        ),
      ),
    );
  }
}