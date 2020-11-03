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

    // this.pageContent.addAll([
    //   Text(
    //     "pData.title",
    //     style: TextStyles.workThumbnailTitle,
    //   ),
    //   Text("pData.date"),
    // ]);

    return this.articleContent;
  }

  Widget process(PubContent item) {
    print(item);
    if (item.pubLink) {
      return Container();
    } else if (item.pubContent) {
      print("dsafsddscolumnu");
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
        width: 400,
        child: Image.network(item.imageUrl),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          this.publication.title,
          style: TextStyles.footerHeaderText,
        ),
        ...articleContent
      ],
    );
  }
}
