import 'package:flutter/material.dart';
import 'package:news_api/model/news_response_model.dart';

class NewsDetailScreen extends StatelessWidget {
  const NewsDetailScreen({super.key, required this.article});

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News Detail',style: TextStyle(fontWeight: FontWeight.bold),),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text(article.articleId ?? ''),
            SizedBox(
              height: 16,
            ),
            Image.network(
              article.imageUrl ?? '',
              height: 200,
              fit: BoxFit.cover,
            ),
            Text(article.content ?? ''),
            Text(
              article.imageUrl ?? '',
              style: TextStyle(color: Colors.blue),
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 16,
            ),
            Text(article.description ?? ''),
            Text(article.title ?? ''),
            Text(
              article.sourceUrl ?? '',
              style: TextStyle(color: Colors.blue),
            ),
            SizedBox(
              height: 16,
            ),
            Text(article.aiTag ?? ''),
            Text(article.sentiment ?? ''),
            Text(article.sentimentStats ?? ''),
            SizedBox(
              height: 16,
            ),
            Text(
              article.link ?? '',
              style: TextStyle(color: Colors.blue),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              article.videoUrl ?? '',
              style: TextStyle(color: Colors.blue),
            ),
            Text(article.language ?? ''),
            Text(article.sourceId ?? ''),
            Text(
              article.pubDate ?? '',
            ),
          ],
        ),
      ),
    );
  }
}
