import 'package:flutter/material.dart';
import 'package:personal_website/Models/Publication.dart';
import 'package:personal_website/SharedComponents/Section/Section.dart';

class ContentSection extends StatefulWidget {
  final Future<List<Publication>> Function(List<dynamic>) myFuture;
  final List<dynamic> parameters;

  final enableImages;

  ContentSection({this.myFuture, this.parameters = const [], this.enableImages = false});

  @override
  _ContentSectionState createState() => _ContentSectionState(
      myFuture: this.myFuture, parameters: this.parameters, enableImage: this.enableImages);
}

class _ContentSectionState extends State<ContentSection> {
  Future<List<Publication>> contentdata;
  final Future<List<Publication>> Function(List<dynamic>) myFuture;
  List<dynamic> parameters;
  final enableImage;

  _ContentSectionState({this.myFuture, this.parameters, this.enableImage});

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
          return Text("afsghjkgj", style: TextStyle(color: Colors.blue));
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
                )
              ],
            ),
          );
        }
      },
    );
  }
}
