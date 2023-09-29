import 'package:dio/dio.dart';
import 'package:newsapp/Model/article_model.dart';

class NewsService{
  late final Dio dio;
  NewsService(this.dio);

  Future<List<ArticleModel>> getTopHeadLines({required String Category}) async {
    try{
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?apiKey=f2652447c9b346049e01f7af556ec7e9&country=us&category=$Category');
      Map<String,dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];

      List<ArticleModel> articlesList = [];

      for(var article in articles){
        ArticleModel articleModel =
        ArticleModel.fromJson(article);
        articlesList.add(articleModel);
      }
      return articlesList;
    }
    catch(e){
      return [];
    }
  }
}