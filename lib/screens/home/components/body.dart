import 'package:ShopApp/constants.dart';
import 'package:ShopApp/screens/home/components/header_card.dart';
import 'package:ShopApp/screens/home/components/title_and_more.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderCard(),
          TitleAndMore(
            title: "Recommended",
            press: () {},
          ),
          Container(
            width: size.width * 0.4,
            margin: EdgeInsets.only(
                left: kDefaultPadding,
                top: kDefaultPadding / 2,
                bottom: kDefaultPadding * 2.5),
            child: Column(children: <Widget>[
              Image.asset(
                "assets/images/image_1.png",
                fit: BoxFit.cover,
              ),
              Container(
                  padding: EdgeInsets.all(kDefaultPadding / 2),
                  child: Row(children: <Widget>[
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "Samantha\n".toUpperCase(),
                          style: Theme.of(context).textTheme.button),
                      TextSpan(
                          text: "Russia".toUpperCase(),
                          style:
                              TextStyle(color: kPrimaryColor.withOpacity(0.5)))
                    ])),
                    Spacer(),
                    Text(
                      '\$400',
                      style: TextStyle(
                          color: kPrimaryColor, fontWeight: FontWeight.bold),
                    )
                  ]))
            ]),
            decoration: BoxDecoration(
                color: kBackgroundColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                      color: kPrimaryColor.withOpacity(0.3),
                      blurRadius: 50,
                      offset: Offset(0, 10)),
                ]),
          )
        ],
      ),
    );
  }
}
