import 'package:flutter/material.dart';


class PhotoGalleryPage extends StatelessWidget {
  const PhotoGalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Photos Gallery Page',
      home: const PhotoGalleryGrid(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PhotoGalleryGrid extends StatelessWidget {
  const PhotoGalleryGrid({super.key});

  final List<Map<String, String>> photos = const [
    {
      'title': 'Saiyaara',
      'poster': 'assets/img/Saiyaara.png',
    },
    {
      'title': 'Inception',
      'poster': 'assets/img/Inception.png',
    },
    {
      'title': 'Kalki',
      'poster': 'assets/img/Kalkimovie.png',
    },
    {
      'title': 'Avengers',
      'poster': 'assets/img/Avengers.png',
    },

    {
      'title': 'Shiddat',
      'poster': 'assets/img/Shiddat.png',
    },
    {
      'title': 'Brahmastra',
      'poster': 'assets/img/Brahmastra.png',
    },
    {
      'title': 'Heropanti',
      'poster': 'assets/img/Heropanti.png',
    },
    {
      'title': 'Luka Chuppi',
      'poster': 'assets/img/Luka-Chuppi.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Photos Gallery Page'),centerTitle: true),
      body: GridView.builder(
        itemCount: photos.length,
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Taped ${photos[index]['title']}')));
            },
            child: MovieCard(
              title: photos[index]['title']!,
              imageUrl: photos[index]['poster']!,
            ),
          );
        },
      ),
    );
  }
}

class MovieCard extends StatelessWidget {
  final String title;
  final String imageUrl;

  const MovieCard({
    super.key,
    required this.title,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Card(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}