import 'package:app_news/models/news.dart';
import 'package:app_news/models/newsrepository/newsrepository.dart';

class Viewnews {
  final rep = Newsrepository();
  Future<Newsheadlines> newsrepositor() async {
    final response = await rep.newsrepositor();
    return response;
  }
}
