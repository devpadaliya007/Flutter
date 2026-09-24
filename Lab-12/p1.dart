import 'package:flutter/material.dart';


class ContactListUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Contact List"),backgroundColor: Colors.blue,centerTitle: true),
        body: ContactList(),
      ),
    );
  }
}

class ContactList extends StatelessWidget {
  final List<Map<String, String>> contacts = [
    {'name': 'Alice','Image':'assets/img/god.jpg', 'phone': '1234567890'},
    {'name': 'Jack','Image':'assets/img/dog.jpg', 'phone': '9876543210'},
    {'name': 'Andrew','Image':'assets/img/god.jpg', 'phone': '5551234567'},
    {'name': 'William','Image':'assets/img/dog.jpg', 'phone': '4449876543'},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: ListView.builder(
          itemCount: contacts.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage(contacts[index]['Image']!),),
                title: Text(contacts[index]['name']!),
                subtitle: Text(contacts[index]['phone']!),
                trailing: ElevatedButton(onPressed: (){}, child: Text("Detalis")),
              ),
            );
          },
        ),),
        Expanded(child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {

            }, child: Text("Add to Card")),
            ElevatedButton(onPressed: () {

            }, child: Text("Wish List")),
          ],
        )),
      ],
    );
  }
}