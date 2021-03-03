import 'package:ShopApp/constants.dart';
import 'package:ShopApp/screens/home/components/card_and_featured.dart';
import 'package:ShopApp/screens/home/components/card_recomend.dart';
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
          CardItemRecomend(),
          TitleAndMore(
            title: "Featured Plants",
            press: () {},
          ),
          CardAndFeatured(),
          SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}
