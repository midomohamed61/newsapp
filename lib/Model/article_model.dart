class ArticleModel{
  final String? image;
  final String? title;
  final String? subTitle;
  ArticleModel({required this.image,required this.subTitle,required this.title});
 // factory to build or return or run another object
  factory ArticleModel.fromJson(json){
    return ArticleModel(
      image: json['urlToImage'],
      subTitle: json['description'],
      title: json['title'],
    );
  }
}

