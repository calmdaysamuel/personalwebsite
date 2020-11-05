import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:personal_website/Models/Publication.dart';
import 'package:personal_website/SharedComponents/Section/Section.dart';

class ContentSection extends StatefulWidget {
  final Future<List<Publication>> Function(List<dynamic>) myFuture;
  final List<dynamic> parameters;

  final enableImages;

  final String goTo;

  ContentSection(
      {this.myFuture, this.parameters = const [], this.enableImages = false, this.goTo = "article"});

  @override
  _ContentSectionState createState() => _ContentSectionState(
      myFuture: this.myFuture,
      parameters: this.parameters,
      enableImage: this.enableImages,
      goTo: this.goTo
  );
}

class _ContentSectionState extends State<ContentSection> with AutomaticKeepAliveClientMixin{
  Future<List<Publication>> contentdata;
  final Future<List<Publication>> Function(List<dynamic>) myFuture;
  List<dynamic> parameters;
  final enableImage;

  String goTo;

  _ContentSectionState({this.myFuture, this.parameters, this.enableImage, this.goTo});

  @override
  void initState() {
    super.initState();
    this.contentdata = this.myFuture(this.parameters);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Publication>>(
      future: this.contentdata,
      builder: (context, snapshot) {
        if (snapshot.hasData == false) {
          return Center(
              child: Container(
                  width: 150,
                  child: Column(
                    children: [
                      LoadingIndicator(
                        indicatorType: Indicator.ballScaleRippleMultiple,
                        color: Colors.green,
                      ),
                      SizedBox(
                        height: 60,
                      )
                    ],
                  )));
        } else {
          return Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Work",
                  style: TextStyle(color: Colors.pink),
                ),
                Section(
                  content: snapshot.data,
                  enableImage: this.enableImage,
                  goTo: this.goTo
                )
              ],
            ),
          );
        }
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}
