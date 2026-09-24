import 'package:flutter/material.dart';


class SimpleDrawerApp extends StatefulWidget {
  @override
  State<SimpleDrawerApp> createState() => _SimpleDrawerAppState();
}

class _SimpleDrawerAppState extends State<SimpleDrawerApp> {
  int currentIndex = 0;
  final List<String> pageTexts = [
    "Chat Page",
    "VC Page",
    "Profile Page",
  ];

  void changePage(int index) {
    setState(() {
      currentIndex = index;
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Drawer App'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text('Menu', style: TextStyle(fontSize: 24, color: Colors.white)),
              decoration: BoxDecoration(color: Colors.blue),
            ),
            ListTile(
              title: Text('Chats'),
              leading: Icon(Icons.chat_outlined),
              onTap: () => changePage(0),
            ),
            ListTile(
              title: Text('Video Calls'),
              leading: Icon(Icons.video_call),
              onTap: () => changePage(1),
            ),
            ListTile(
              title: Text('Profile Page'),
              leading: Icon(Icons.person),
              onTap: () => changePage(2),
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          pageTexts[currentIndex],
          style: TextStyle(fontSize: 28),
        ),
      ),
    );
  }
}