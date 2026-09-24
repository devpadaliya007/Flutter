import 'package:flutter/material.dart';

class ECommerceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ECommerceUI(),
    );
  }
}

class ECommerceUI extends StatelessWidget {
  final List<Map<String, String>> products = [
    {"name": "SmartPhone", "image": "assets/img/SmartPhone.png", "price": "₹1,25,000"},
    {"name": "HeadPhones", "image": "assets/img/Headphone.png", "price": "₹10,000"},
    {"name": "Shoes", "image": "assets/img/Shoes.png", "price": "₹4,500"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("E-commerce UI List"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(product['image']!),
                    ),
                    title: Text(product['name']!),
                    subtitle: Text(product['price']!),
                    trailing: ElevatedButton(
                      onPressed: () {},
                      child: Text("Details"),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () {}, child: Text("Add to Cart")),
                ElevatedButton(onPressed: () {}, child: Text("Wish List")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}