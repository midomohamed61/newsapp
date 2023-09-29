import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/Model/article_model.dart';
import 'package:newsapp/services/news_service.dart';
import 'package:newsapp/widget/news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({
    super.key, required this.category,
  });
final String category;
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {


  var future;
  @override
  void initState() {
    super.initState();
    future = NewsService(Dio()).getTopHeadLines(Category: widget.category);
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListView(
              articles: snapshot.data ?? [],
            );
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(child: Text('Error'));
          } else {
            return const SliverToBoxAdapter(
                child: Center(child: CircularProgressIndicator()));
          }
        });
    // return isLoading
    //     ? const SliverToBoxAdapter(
    //         child: Center(child: CircularProgressIndicator()))
    //     : articles.isEmpty
    //         ? NewsListView(
    //             articles: articles,
    //           )
    //         : const SliverToBoxAdapter(child: Text('Error'));
  }
}
