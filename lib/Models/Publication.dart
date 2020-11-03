import 'package:personal_website/Models/PubContent.dart';

class Publication {
  String category;
  List<PubContent> content;
  String date;
  String description;
  bool isPublication;
  String pubImageUrl;
  List<String> tags;
  String title;

  Publication(
      {this.category,
      this.content,
      this.date,
      this.description,
      this.isPublication,
      this.pubImageUrl,
      this.tags,
      this.title});

  factory Publication.fromJson(Map<String, dynamic> json) {
    return Publication(
      category: json['category'],
      content: json['content'] != null
          ? (json['content'] as List)
              .map((i) => PubContent.fromJson(i))
              .toList()
          : null,
      date: json['date'],
      description: json['description'],
      isPublication: json['isPublication'],
      pubImageUrl: json['pubImageUrl'],
      tags: json['tags'] != null ? new List<String>.from(json['tags']) : null,
      title: json['title'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['category'] = this.category;
    data['date'] = this.date;
    data['description'] = this.description;
    data['isPublication'] = this.isPublication;
    data['pubImageUrl'] = this.pubImageUrl;
    data['title'] = this.title;
    if (this.content != null) {
      data['content'] = this.content.map((v) => v.toJson()).toList();
    }
    if (this.tags != null) {
      data['tags'] = this.tags;
    }
    return data;
  }
}
