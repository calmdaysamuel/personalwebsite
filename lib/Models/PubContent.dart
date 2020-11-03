class PubContent {
  String contentHeader;
  String imageSubtitle;
  String imageUrl;
  bool pubContent;
  bool pubImage;
  bool pubLink;
  String link;
  List<String> paragraphs;
  String phrase;
  String targetPhrase;

  PubContent(
      {this.contentHeader,
      this.imageSubtitle,
      this.imageUrl,
      this.pubContent,
      this.pubImage,
      this.pubLink,
      this.link,
      this.paragraphs,
      this.phrase,
      this.targetPhrase});

  factory PubContent.fromJson(Map<String, dynamic> json) {
    return PubContent(
      contentHeader: json['contentHeader'],
      imageSubtitle: json['imageSubtitle'],
      imageUrl: json['imageUrl'],
      pubContent: json['pubContent'],
      pubImage: json['pubImage'],
      pubLink: json['pubLink'],
      link: json['link'],
      paragraphs: json['paragraphs'] != null
          ? new List<String>.from(json['paragraphs'])
          : null,
      phrase: json['phrase'],
      targetPhrase: json['targetPhrase'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['contentHeader'] = this.contentHeader;
    data['imageSubtitle'] = this.imageSubtitle;
    data['imageUrl'] = this.imageUrl;
    data['pubContent'] = this.pubContent;
    data['pubImage'] = this.pubImage;
    data['pubLink'] = this.pubLink;
    data['link'] = this.link;
    data['phrase'] = this.phrase;
    data['targetPhrase'] = this.targetPhrase;
    if (this.paragraphs != null) {
      data['paragraphs'] = this.paragraphs;
    }
    return data;
  }

  @override
  String toString() {
    return this.pubContent.toString() +
        "  " +
        this.pubImage.toString() +
        "  " +
        this.pubLink.toString();
  }
}
