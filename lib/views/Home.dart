import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/Model/article_model.dart';
import 'package:newsapp/services/news_service.dart';
import 'package:newsapp/widget/categories_list_view.dart';
import 'package:newsapp/widget/category_card.dart';
import 'package:newsapp/widget/news_list_view.dart';
import 'package:newsapp/widget/news_list_view_builder.dart';
import 'package:newsapp/widget/news_tile.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'News',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              'Cloud',
              style: TextStyle(color: Colors.orange),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CategoriesListView(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 8,
              ),
            ),
               NewsListViewBuilder(category: 'general',),

          ],
        ),
        // child: Column(
        //   children: [
        //     CategoriesListView(),
        //     SizedBox(
        //       height: 16,
        //     ),
        //     Expanded(
        //         child: NewsListView()
        //     ),
        //   ],
        // ),
      ),
    );
  }
}


