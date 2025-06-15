import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:app_news/models/news.dart';

class NewsDetailScreen extends StatelessWidget {
  final Articles article;

  const NewsDetailScreen({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'News Detail',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // News Image
            if (article.urlToImage != null)
              CachedNetworkImage(
                imageUrl: article.urlToImage!,
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
                errorWidget: (context, url, error) => const Icon(Icons.error),
              )
            else
              Container(
                height: 250,
                width: double.infinity,
                color: Colors.grey[300],
                child: const Icon(Icons.image, size: 80, color: Colors.grey),
              ),
            const SizedBox(height: 10),

            // News Title
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                article.title ?? 'No Title Available',
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // Publication Date
            if (article.publishedAt != null)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Published on: ${article.publishedAt}',
                  style: const TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ),

            const SizedBox(height: 10),

            // Description or Content
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                maxLines: 8,
                article.description ??
                    article.content ??
                    'No description available.',
                style: const TextStyle(fontSize: 16),
                textAlign: TextAlign.justify, // Optional
              ),
            ),
          ],
        ),
      ),
    );
  }
}
