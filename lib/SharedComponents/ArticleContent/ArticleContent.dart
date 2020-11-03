import 'package:flutter/material.dart';
import 'package:personal_website/Models/PubContent.dart';
import 'package:personal_website/Models/Publication.dart';
import 'package:personal_website/Styles/TextStyles.dart';

class ArticleContent extends StatelessWidget {
  final Publication publication;
  List<Widget> articleContent = [];

  ArticleContent({this.publication}) {
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
      return Container(
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
        width: double.infinity,
        child: Image.network(
          item.imageUrl,
          fit: BoxFit.cover,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(this.publication.title, style: TextStyles.blogHeader),
        SizedBox(
          height: 15,
        ),
        Text(
          this.publication.date,
          style: TextStyles.blogDate,
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Column(
                children: this.articleContent,
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 400,
                    height: 400,
                    color: Colors.green,
                    child: Text("An ad"),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 400,
                    height: 400,
                    color: Colors.green,
                    child: Text("An ad"),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 400,
                    height: 400,
                    color: Colors.green,
                    child: Text("An ad"),
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
