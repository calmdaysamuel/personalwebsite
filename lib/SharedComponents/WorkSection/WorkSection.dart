import 'package:flutter/material.dart';
import 'package:personal_website/Models/Publication.dart';
import 'package:personal_website/Services/API.dart';
import 'package:personal_website/SharedComponents/Section/Section.dart';
import 'package:personal_website/Styles/TextStyles.dart';
import 'package:async/async.dart';

class WorkSection extends StatefulWidget {
  @override
  _WorkSectionState createState() => _WorkSectionState();
}

class _WorkSectionState extends State<WorkSection> {
  Future<List<Publication>> contentdata;

  @override
  void initState() {
    super.initState();
    print("here");
    this.contentdata = API.getPublicationRecommendation();
    print("hello");
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
                )
              ],
            ),
          );
        }
      },
    );
  }
}
