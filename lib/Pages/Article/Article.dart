import 'package:flutter/material.dart';
import 'package:personal_website/Models/PubContent.dart';
import 'package:personal_website/Models/Publication.dart';
import 'package:personal_website/Services/API.dart';
import 'package:personal_website/SharedComponents/ArticleContent/ArticleContent.dart';
import 'package:personal_website/SharedComponents/Footer/Footer.dart';
import 'package:personal_website/SharedComponents/Header/Header.dart';
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
    print("here");
    this.pageData = API.getPublication(page);
    print("hello");
  }

  List<Widget> processPublication(Publication pData) {
    print("hello sam");

    print("hello sdsfgdf");
    for (var item in pData.content) {
      print(item);
      this.pageContent.add(process(item));
    }

    // this.pageContent.addAll([
    //   Text(
    //     "pData.title",
    //     style: TextStyles.workThumbnailTitle,
    //   ),
    //   Text("pData.date"),
    // ]);

    return this.pageContent;
  }

  Widget process(PubContent item) {
    print(this.pageContent);
    if (item.pubLink != null) {
      return Container();
    } else if (item.pubContent != null) {
      print("dsafsddscolumnu");
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
    var margin = MediaQuery.of(context).size.width - 1762.14 + 352 + 60 + 100;
    if (margin < 0) {
      margin = 60;
    }
    return Scaffold(
        backgroundColor: Color(0xff0b0c0d),
        body: Container(
          margin: EdgeInsets.fromLTRB(margin / 2, 0, margin / 2, 0),
          child: ListView(
            children: [
              Header(),
              SizedBox(
                height: 60,
              ),
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
              Footer()
            ],
          ),
        ));
  }
}
