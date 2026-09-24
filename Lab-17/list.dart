import 'package:flutter/material.dart';
import '../Lab-17/student_model.dart';

class ListDemo1 extends StatelessWidget {
  ListDemo1({super.key});

  List<Student> students=[
    Student( name: "William", enrollmentNumber: '101', branch: "CSE", mobileNumber: "1234567890", semester: 5, password: "123456"),
    Student( name: "Jack", enrollmentNumber: '102', branch: "CSE", mobileNumber: "1234567890", semester: 5, password: "123456"),
    Student( name: "Martin", enrollmentNumber: '103', branch: "CSE", mobileNumber: "1234567890", semester: 5, password: "123456"),
    Student( name: "Alice", enrollmentNumber: '104', branch: "CSE", mobileNumber: "1234567890", semester: 5, password: "123456"),
    Student( name: "Rony", enrollmentNumber: '105', branch: "CSE", mobileNumber: "1234567890", semester: 5, password: "123456"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Demo'),
      ),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          Student s1=students[index];
          return ListTile(
            title: Text(s1.name.toString()),
            subtitle: Text(s1.enrollmentNumber),
          );
        },
      ),
    );
  }
}