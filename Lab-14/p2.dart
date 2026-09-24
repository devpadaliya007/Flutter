import 'package:flutter/material.dart';

class QuoteSwiperUI extends StatelessWidget {
  const QuoteSwiperUI({super.key});

  final List<Map<String, String>> quotes = const [
    {
      "text": "Let us sacrifice our today so that our children can have a better tomorrow.",
      "author": "A.P.J. Abdul Kalam"
    },
    {
      "text": "Only two things are infinite, the universe and human stupidity, and I'm not sure about the former.",
      "author": "Albert Einstein"
    },
    {
      "text": "Let the rain kiss you. Let the rain beat upon your head with silver liquid drops.",
      "author": "Langston Hughes"
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quotes Swiper UI"),
        centerTitle: true,
        backgroundColor: Colors.indigoAccent,
      ),
      body: ListView(
        children: [
          Container(
            height: 500,
            child: PageView.builder(
              controller: PageController(viewportFraction: 0.85),
              scrollDirection: Axis.horizontal,
              itemCount: quotes.length,
              itemBuilder: (context, index) {
                return buildQuoteCard(quotes[index]);
              },
            ),
          ),
          Container(
            height: 500,
            child: PageView.builder(
              controller: PageController(viewportFraction: 0.85),
              scrollDirection: Axis.horizontal,
              itemCount: quotes.length,
              itemBuilder: (context, index) {
                return buildQuoteCard(quotes[index]);
              },
            ),
          ),
          Container(
            height: 500,
            child: PageView.builder(
              controller: PageController(viewportFraction: 0.85),
              scrollDirection: Axis.horizontal,
              itemCount: quotes.length,
              itemBuilder: (context, index) {
                return buildQuoteCard(quotes[index]);
              },
            ),
          )
        ],
      )
    );
  }

  Widget buildQuoteCard(Map<String, String> quote) {
    return Card(
      elevation: 10,
      margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      color: Colors.greenAccent,
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.format_quote, size: 48, color: Colors.grey[600]),
            const SizedBox(height: 20),
            Text(
              quote['text'] ?? '',
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 24,
                fontStyle: FontStyle.italic,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              "- ${quote['author']}",
              textAlign: TextAlign.right,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 20),
            IconButton(
              icon: const Icon(Icons.favorite_border),
              iconSize: 30,
              color: Colors.redAccent,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}