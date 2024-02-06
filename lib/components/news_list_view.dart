import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Models/article_models.dart';
import 'news_title.dart';

class NewsListView extends StatelessWidget {
  List<ArticleModel> articleModels;
  NewsListView({super.key, required this.articleModels});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articleModels.length,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 25.0, left: 15, right: 10),
            child: NewsTitle(articleModel: articleModels[index]),
          );
        },
      ),
    );
  }
}
