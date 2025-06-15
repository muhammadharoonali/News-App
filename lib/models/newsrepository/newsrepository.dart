import 'dart:convert';
import 'package:app_news/models/news.dart';
import 'package:http/http.dart' as http;

class Newsrepository {
  Future<Newsheadlines> newsrepositor() async {
    String url =
        'https://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=35cdcbe92c1b4dcdbe066d8db6e214b8';
    final response = await http.get(Uri.parse(url));
    final body = jsonDecode(response.body);
    if (response.statusCode == 200) {
      return Newsheadlines.fromJson(body);
    } else {
      throw Exception('error');
    }
  }
}
