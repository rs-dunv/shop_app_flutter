import 'package:ShopApp/constants.dart';
import 'package:flutter/material.dart';

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          FeaturePlantCard(
            image: 'assets/images/bottom_img_1.png',
            press: () {},
          ),
          FeaturePlantCard(
            image: 'assets/images/bottom_img_2.png',
            press: () {},
          ),
          FeaturePlantCard(
            image: 'assets/images/bottom_img_1.png',
            press: () {},
          ),
        ],
      ),
    );
  }
}

class FeaturePlantCard extends StatelessWidget {
  const FeaturePlantCard({Key key, this.image, this.press}) : super(key: key);

  final String image;
  final Function press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        width: size.width * 0.8,
        margin: EdgeInsets.only(
            left: kDefaultPadding,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding / 2),
        height: size.height * 0.2,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
      ),
    );
  }
}
