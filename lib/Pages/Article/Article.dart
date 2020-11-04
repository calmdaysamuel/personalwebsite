import 'package:flutter/material.dart';
import 'package:personal_website/Models/PubContent.dart';
import 'package:personal_website/Models/Publication.dart';
import 'package:personal_website/Services/API.dart';
import 'package:personal_website/SharedComponents/ArticleContent/ArticleContent.dart';
import 'package:personal_website/SharedComponents/PageTemplate/PageTemplate.dart';
import 'package:personal_website/Styles/TextStyles.dart';

class Article extends StatefulWidget {
  static const route = "/blog/article";
  String page;

  Article({this.page});

  @override
  _ArticleState createState() => _ArticleState(this.page);
}

class _ArticleState extends State<Article> {
  Future<Publication> pageData;
  List<Widget> pageContent = [];
  String page;

  _ArticleState(this.page) {
    //processPublication(pageData);
  }

  @override
  void initState() {
    super.initState();
    this.pageData = API.getPublication(page);
  }

  List<Widget> processPublication(Publication pData) {
    for (var item in pData.content) {
      this.pageContent.add(process(item));
    }

    return this.pageContent;
  }

  Widget process(PubContent item) {
    print(this.pageContent);
    if (item.pubLink != null) {
      return Container();
    } else if (item.pubContent != null) {
      return Container(
        child: Column(
          children: item.paragraphs.map((e) {
            return Text(
              "sdasfs",
              style: TextStyles.footerBodyText,
            );
          }).toList(),
        ),
      );
    } else {
      return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      children: [
        FutureBuilder<Publication>(
          future: this.pageData,
          builder: (context, snapshot) {
            if (snapshot.hasData == false) {
              Container(
                child: Text(
                  "pData.titldsfdsghgfgfe",
                  style: TextStyles.workThumbnailTitle,
                ),
              );
            }
            return ArticleContent(
              publication: snapshot.data,
            );
          },
        ),
      ],
    );
  }
}

// ArticleContent(
// publication: snapshot.data,
// );
