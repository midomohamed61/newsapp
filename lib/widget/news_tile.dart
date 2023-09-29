import 'package:flutter/material.dart';
import 'package:newsapp/Model/article_model.dart';
class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        //ClipRRect is for get border attribute
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.network(
            articleModel.image!,
            height: 200,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
        ),
         const SizedBox(
          height: 12,
        ),
        Text(
          articleModel.title!,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.black,
            fontSize:20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          articleModel.subTitle ??' ',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
