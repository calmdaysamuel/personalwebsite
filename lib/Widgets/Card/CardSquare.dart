import 'package:flutter/material.dart';
import 'package:personal_website/DataModels/CardModel.dart';
import 'package:personal_website/Styles/Colors.dart';
import 'package:personal_website/Styles/TextStyles.dart';
import 'package:personal_website/Utilities/WebsiteRoute.dart';

class CardSquare extends StatelessWidget {
  String title;
  String body;
  String goTo;
  String date;
  String role;
  CardModel card;

  CardSquare({this.title, this.body, this.goTo, this.date, this.role});

  CardSquare.cardBody({this.card}) {
    this.title = card.title;
    this.body = card.body;
    this.goTo = card.goTo;
    this.date = card.date;
    this.role = card.role;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
          color: ColorStyle.primaryWhite,
          border: Border.all(
              color: ColorStyle.primaryBlack,
              width: 4,
              style: BorderStyle.solid)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            this.title,
            style: TextStyles.cardHeading,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              (this.role != null)
                  ? Text(this.role)
                  : SizedBox(
                      height: 20,
                    ),
              SizedBox(
                height: 20,
              ),
              (this.date != null)
                  ? Text(this.date)
                  : SizedBox(
                      height: 20,
                    ),
            ],
          ),
          Text(this.body, style: TextStyles.cardBody),
          SizedBox(
            height: 20,
          ),
          (this.goTo != null)
              ? InkWell(
                  onTap: () {
                    WebsiteRoute.navigateToProject(this.goTo, context);
                  },
                  splashColor: ColorStyle.primaryBlack,
                  child: Container(
                    color: ColorStyle.primaryBlack,
                    height: 42,
                    width: 90,
                    child: Center(
                        child: Text(
                      "MORE",
                      style: TextStyles.buttonText,
                    )),
                  ),
                )
              : SizedBox(
                  height: 1,
                )
        ],
      ),
    );
  }
}
