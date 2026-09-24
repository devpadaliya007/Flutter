import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'ModelClass.dart';

class lazyloding extends StatefulWidget {
  const lazyloding({super.key});

  @override
  State<lazyloding> createState() => _lazylodingState();
}

class _lazylodingState extends State<lazyloding> {
  List<Result> result=[];
  ScrollController scrollController= ScrollController();
  bool loding=true;
  int offset=0;
  void initState(){
    super.initState();
    fetchdata(offset);
    handeldata();
  }
  void fetchdata(paraOffset)async{
    var response=await http.get(Uri.parse('https://pokeapi.co/api/v2/pokemon?offset=${paraOffset}&limit=15'));
    ModelClass modelClass=ModelClass.fromJson(json.decode(response.body));
    result=result+modelClass.results;
    int localoffset =offset+15;
    setState(() {
      result;
      loding=false;
      offset=localoffset;

    });
  }
  void handeldata(){
    scrollController.addListener(() async{
      if(scrollController.position.maxScrollExtent==scrollController.position.pixels){
        fetchdata(offset);
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Practical-23"),),
      body: ListView.builder(
          controller: scrollController,
          itemCount: result.length,
          itemBuilder: (context,index)=>ListTile(
            title: Text(result[index].name,),
            subtitle: Text(result[index].url),
          )),
    );
  }
}