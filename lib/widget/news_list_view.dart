import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/Model/article_model.dart';
import 'package:newsapp/services/news_service.dart';
import 'package:newsapp/widget/news_tile.dart';

class NewsListView extends StatelessWidget {
  List<ArticleModel> articles ;

  NewsListView({super.key,required this.articles});

  @override
  Widget build(BuildContext context) {

    return
         SliverList(
            // shrinkWrap: true,
           delegate: SliverChildBuilderDelegate(
             childCount: articles.length,
               (context,index){
               return Padding(
                   padding:const EdgeInsets.only(bottom: 22),
                 child: NewsTile(
                   articleModel: articles[index],
                 ),
               );
               },
           ),
            // physics: NeverScrollableScrollPhysics(),
            // itemCount: articles.length,
            // itemBuilder: (context, index) {
            //   return Padding(
            //     padding: const EdgeInsets.only(top: 16),
            //     child: NewsTile(
            //       articleModel: articles[index],
            //     ),
            //   );
            );
  }
}
