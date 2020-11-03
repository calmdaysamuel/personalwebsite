import 'package:flutter/material.dart';
import 'package:personal_website/SharedComponents/BlogThumbnail/BlogThumbnail.dart';
import 'package:personal_website/Styles/TextStyles.dart';

class BlogSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "BLOG",
            style: TextStyles.footerHeaderText,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              BlogThumbnail(
                imageUrl:
                    "https://images.unsplash.com/photo-1515879218367-8466d910aaa4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80",
              ),
              SizedBox(
                width: 50,
              ),
              BlogThumbnail(
                imageUrl:
                    "https://images.unsplash.com/photo-1515879218367-8466d910aaa4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80",
              )
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            children: [
              BlogThumbnail(
                imageUrl:
                    "https://images.unsplash.com/photo-1515879218367-8466d910aaa4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80",
              ),
              SizedBox(
                width: 50,
              ),
              BlogThumbnail(
                imageUrl:
                    "https://images.unsplash.com/photo-1515879218367-8466d910aaa4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80",
              )
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            children: [
              BlogThumbnail(
                imageUrl:
                    "https://images.unsplash.com/photo-1515879218367-8466d910aaa4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80",
              ),
              SizedBox(
                width: 50,
              ),
              BlogThumbnail(
                imageUrl:
                    "https://images.unsplash.com/photo-1515879218367-8466d910aaa4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80",
              )
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            children: [
              BlogThumbnail(
                imageUrl:
                    "https://images.unsplash.com/photo-1515879218367-8466d910aaa4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80",
              ),
              SizedBox(
                width: 50,
              ),
              BlogThumbnail(
                imageUrl:
                    "https://images.unsplash.com/photo-1515879218367-8466d910aaa4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80",
              )
            ],
          ),
          SizedBox(
            height: 35,
          ),
          TextButton(
            child: Text(
              "See all blog posts ->",
              style: TextStyles.ssText,
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
