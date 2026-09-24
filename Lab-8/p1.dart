import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

  Widget button1(String txt) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        backgroundColor: Colors.orange,
        padding: const EdgeInsets.all(20),
      ),
      onPressed: () {},
      child: Text(
        txt,
        style: const TextStyle(fontSize: 28, color: Colors.white),
      ),
    );
  }

  Widget button2(String txt) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(20),
      ),
      onPressed: () {},
      child: Text(
        txt,
        style: const TextStyle(fontSize: 28, color: Colors.deepPurple),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: 595,
          width: 350,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 234, 234, 234),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Container(
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "0",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 45,
                      ),
                    ),
                  ),
                ),
              ),
              // Each row inside Expanded
              Expanded(
                child: Row(
                  children: [
                    Expanded(child: button1("C")),
                    Expanded(child: button1("()")),
                    Expanded(child: button1("%")),
                    Expanded(child: button1("/")),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(child: button2("7")),
                    Expanded(child: button2("8")),
                    Expanded(child: button2("9")),
                    Expanded(child: button1("x")),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(child: button2("4")),
                    Expanded(child: button2("5")),
                    Expanded(child: button2("6")),
                    Expanded(child: button1("-")),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(child: button2("1")),
                    Expanded(child: button2("2")),
                    Expanded(child: button2("3")),
                    Expanded(child: button1("+")),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(child: button2("00")),
                    Expanded(child: button2("0")),
                    Expanded(child: button2(".")),
                    Expanded(child: button2("=")),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}