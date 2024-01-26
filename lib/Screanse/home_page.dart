import 'package:flutter/material.dart';
import 'package:newsegb/Companents/categry_list_view.dart';
import 'package:newsegb/Companents/news_list_view_builder.dart';

class HomePage extends StatelessWidget {
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
                const SizedBox(
                  width: 1,
                ),
                Container(
                    decoration: const BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(0),
                            topLeft: Radius.circular(10))),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 5.0, right: 5),
                      child: Center(
                          child: Text("Top",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 30))),
                    )),
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
                            style:
                                TextStyle(color: Colors.white, fontSize: 30)),
                      )),
                )
              ],
            )),
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: ListViewCategry(),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.only(top: 10, bottom: 20),
              sliver: SliverToBoxAdapter(
                child: Divider(
                  color: Colors.black38,
                  height: .5,
                  thickness: 3,
                  endIndent: 50,
                  indent: 50,
                ),
              ),
            ),
            NewsListViewBuilder(categry: "general"),
          ],
        ));
  }
}
