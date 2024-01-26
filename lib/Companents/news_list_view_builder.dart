import 'package:flutter/material.dart';
import 'package:newsegb/Companents/news_list_view.dart';
import 'package:newsegb/services/news_services.dart';

import '../Models/article_models.dart';

class NewsListViewBuilder extends StatefulWidget {
String categry;
NewsListViewBuilder({super.key, required this.categry});
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();

}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  List<ArticleModel> articleModels = [];
  var future;
  @override
  void initState() {
    super.initState();
     future=NewsServices(categry: widget.categry).getNews();

  }



  @override
  Widget build(BuildContext context) {
    return FutureBuilder<dynamic>(future: future, builder: (context, snapshot) {
      if(snapshot.hasData)
       { return NewsListView(articleModels: snapshot.data??[]);}
      else if(snapshot.hasError)

       { return  const SliverToBoxAdapter(
            child: Text("OPS"));}
      else
        return
          const SliverPadding(
              padding: EdgeInsets.symmetric(

                vertical: 170,
                horizontal: 170,
              ),
              sliver: SliverToBoxAdapter(child:


              Center(child: CircularProgressIndicator())));

    },);

      //inloding?SliverToBoxAdapter(child: Center(child: CircularProgressIndicator())):articleModels.isNotEmpty? NewsListView(articleModels: articleModels):
    const SliverToBoxAdapter(
        child: Text("OPS"));

  }
}
