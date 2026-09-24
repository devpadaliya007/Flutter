import 'package:flutter/material.dart';

class TabView extends StatefulWidget {
  const TabView({super.key});

  @override
  State<TabView> createState() => _TabViewState();
}

class _TabViewState extends State<TabView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Message App", style: TextStyle(color: Colors.black)),

          bottom: TabBar(
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.black,
            dividerHeight: 0,
            tabs: [
              Tab(text: "Home", icon: Icon(Icons.home)),
              Tab(text: "About Us", icon: Icon(Icons.info)),
              Tab(text: "Contact Us", icon: Icon(Icons.call)),
              Tab(text: "Profile", icon: Icon(Icons.person)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text("Home", style: TextStyle(fontSize: 24))),
            Center(child: Text("About Us", style: TextStyle(fontSize: 24))),
            Center(child: Text("Contact Us", style: TextStyle(fontSize: 24))),
            Center(child: Text("Profile", style:TextStyle(fontSize: 24))),
          ],
        ),
      ),
    );
  }
}