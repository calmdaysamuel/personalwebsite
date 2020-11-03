import 'package:flutter/material.dart';
import 'package:personal_website/Styles/TextStyles.dart';

class Bio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "assets/images/1567147079-440035-headshot-2jpg.jpeg",
            fit: BoxFit.cover,
            width: 1000,
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: 950,
            child: Text(
              "I’m Oliur — a designer, photographer and creator based in the UK. I started as a web designer but my skills have evolved to doing a mix of everything from creating digital content to running successful e-commerce stores.",
              style: TextStyles.bioTextStyles,
            ),
          ),
          SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }
}
