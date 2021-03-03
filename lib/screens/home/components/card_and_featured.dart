import 'package:ShopApp/constants.dart';
import 'package:flutter/material.dart';

class CardAndFeatured extends StatelessWidget {
  const CardAndFeatured({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ItemAndImage(
              image: "assets/images/bottom_img_1.png",
            ),
            ItemAndImage(
              image: "assets/images/bottom_img_2.png",
            ),
            ItemAndImage(
              image: "assets/images/bottom_img_1.png",
            ),
          ],
        ));
  }
}

class ItemAndImage extends StatelessWidget {
  const ItemAndImage({
    Key key,
    this.image,
  }) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      height: size.height * 0.2,
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage("$image"))),
    );
  }
}
