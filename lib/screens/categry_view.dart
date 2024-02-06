import 'package:flutter/material.dart';

import '../Components/news_list_view_builder.dart';

class CategryView extends StatelessWidget {
  final String categry;
  const CategryView({super.key, required this.categry});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                decoration: const BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(0),
                        topLeft: Radius.circular(10))),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 5.0, right: 5),
                  child: Text(categry,
                      style:
                          const TextStyle(color: Colors.white, fontSize: 30)),
                )),
              ),
              Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(10),
                        topLeft: Radius.circular(3),
                        bottomLeft: Radius.circular(3)),
                    color: Colors.black),
                child: const Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 5.0, right: 5, top: 3, bottom: 3),
                      child: Text("News",
                          style: TextStyle(color: Colors.white, fontSize: 30)),
                    )),
              )
            ],
          )),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          NewsListViewBuilder(categry: categry),
        ],
      ),
    );
  }
}
