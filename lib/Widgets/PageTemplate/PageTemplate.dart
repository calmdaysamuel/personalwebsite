import "package:flutter/material.dart";

class PageTemplate extends StatelessWidget {
  final List<Widget> children;

  PageTemplate({this.children});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        child: ListView(
            addAutomaticKeepAlives: true, children: [...this.children]),
      ),
    );
  }
}
