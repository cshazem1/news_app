import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsegb/Models/article_models.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsTitle extends StatefulWidget {
  ArticleModel articleModel;
  NewsTitle({super.key, required this.articleModel});

  @override
  State<NewsTitle> createState() => _NewsTitleState();
}

class _NewsTitleState extends State<NewsTitle> {
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: ()
        async =>
            _launchUrl()

      ,

      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: const Offset(3, 4), // changes position of shadow
                    ),
                  ],
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          widget.articleModel.image??"https://i.stack.imgur.com/l60Hf.png"))),
            ),

          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(

                  children: [
                    SizedBox(
                      height: 50,
                      child: Text(
      widget.articleModel.Title??"NO Titel"
      ,                      maxLines: 2,
                        overflow: TextOverflow.ellipsis,

                        style:
                            const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text(
      widget.articleModel.describtion??"NO Describtion",

                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,

                          style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );

  }



  Future<void> _launchUrl() async {
    final Uri url = Uri.parse(widget.articleModel.url!);

    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}
