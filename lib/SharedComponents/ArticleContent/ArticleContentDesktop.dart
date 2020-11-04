import 'package:flutter/material.dart';
import 'package:personal_website/Models/PubContent.dart';
import 'package:personal_website/Models/Publication.dart';
import 'package:personal_website/Styles/TextStyles.dart';

class ArticleContentDesktop extends StatelessWidget {
  final Publication publication;
  List<Widget> articleContent = [];

  ArticleContentDesktop({this.publication}) {
    processPublication(this.publication);
  }

  List<Widget> processPublication(Publication pData) {
    for (var item in pData.content) {
      this.articleContent.add(process(item));
      this.articleContent.add(SizedBox(
            height: 40,
          ));
    }

    return this.articleContent;
  }

  Widget process(PubContent item) {
    if (item.pubLink) {
      return Container();
    } else if (item.pubContent) {
      return LimitedBox(
        maxWidth: 700,
        child: Column(
          children: item.paragraphs.map((e) {
            return Text(
              e,
              style: TextStyles.blogText,
            );
          }).toList(),
        ),
      );
    } else {
      return Container(
        width: 700,
        child: Image.network(
          item.imageUrl,
          fit: BoxFit.cover,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 700,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Column(
              children: [...articleContent],
            ),
          ),
          Container(
            color: Colors.green,
            width: 400,
            height: 400,
            child: Text("ddsfghfgtr"),
          )
        ],
      ),
    );
  }
}
