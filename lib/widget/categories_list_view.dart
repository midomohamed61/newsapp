import 'package:flutter/material.dart';
import 'package:newsapp/Model/category_model.dart';
import 'package:newsapp/widget/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  final List<CategoryModel> categories = const [
    CategoryModel(image: 'assets/business.png', categoryName: 'Business'),
    CategoryModel(
        image: 'assets/entertaiment.jpg', categoryName: 'Entertaiment'),
    CategoryModel(image: 'assets/general.png', categoryName: 'General'),
    CategoryModel(image: 'assets/health.jpg', categoryName: 'Health'),
    CategoryModel(image: 'assets/science.jpg', categoryName: 'Science'),
    CategoryModel(image: 'assets/sports.png', categoryName: 'Sports'),
    CategoryModel(image: 'assets/technology.jpg', categoryName: 'Technology'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85, // نفس الطول بتاع ال categoryCard
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              category: categories[index],
            );
          }),
    );
  }
}
