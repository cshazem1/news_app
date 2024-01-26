import 'package:flutter/material.dart';
import '../Models/article_models.dart';
import '../services/news_services.dart';
import 'news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
final String categry;
const NewsListViewBuilder({super.key, required this.categry});
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();

}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  List<ArticleModel> articleModels = [];

  // ignore: prefer_typing_uninitialized_variables
  var future;

  @override
  void initState() {
    super.initState();
    future = NewsServices(categry: widget.categry).getNews();
  }


  @override
  Widget build(BuildContext context) {
    return FutureBuilder<dynamic>(future: future, builder: (context, snapshot) {
      if (snapshot.hasData) {
        return NewsListView(articleModels: snapshot.data ?? []);
      }
      else if (snapshot.hasError) {
        return const SliverToBoxAdapter(
            child: Text("OPS"));
      }
      else
        // ignore: curly_braces_in_flow_control_structures
        return
          const SliverPadding(
              padding: EdgeInsets.symmetric(

                vertical: 170,
                horizontal: 170,
              ),
              sliver: SliverToBoxAdapter(child:


              Center(child: CircularProgressIndicator())));
    },);
  }
}