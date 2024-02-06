import 'package:dio/dio.dart';

import '../Models/article_models.dart';

class NewsServices {
  String categry;
  NewsServices({required this.categry});

  List<ArticleModel> articleList = [];
  final dio = Dio();

  Future<List<ArticleModel>> getNews() async {
    try {
      final response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=1bff6884e0ae49dbaa1ee348e2bfa7c9&category=$categry');
      Map<String, dynamic> jason = response.data;
      List<dynamic> articles = jason['articles'];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articleList.add(articleModel);
      }
      return articleList;
    } on Exception catch (e) {}
    return [];
  }
}
