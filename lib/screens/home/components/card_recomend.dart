import 'package:ShopApp/constants.dart';
import 'package:ShopApp/details/detail_screen.dart';
import 'package:flutter/material.dart';

class CardItemRecomend extends StatelessWidget {
  const CardItemRecomend({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CardRecomend(
            image: "assets/images/image_1.png",
            title: "Samantha",
            price: 430,
            country: "Russian",
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (content) => DetailScreen()));
            },
          ),
          CardRecomend(
            image: "assets/images/image_2.png",
            title: "Samantha",
            price: 430,
            country: "Russian",
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (content) => DetailScreen()));
            },
          ),
          CardRecomend(
            image: "assets/images/image_3.png",
            title: "Samantha",
            price: 430,
            country: "Russian",
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (content) => DetailScreen()));
            },
          ),
          CardRecomend(
            image: "assets/images/image_1.png",
            title: "Samantha",
            price: 430,
            country: "Russian",
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (content) => DetailScreen()));
            },
          )
        ],
      ),
    );
  }
}

class CardRecomend extends StatelessWidget {
  const CardRecomend(
      {Key key, this.image, this.press, this.title, this.country, this.price})
      : super(key: key);
  final String image, title, country;
  final Function press;
  final int price;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.4,
      margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2),
      child: GestureDetector(
        onTap: press,
        child: Column(children: <Widget>[
          Image.asset(
            "$image",
            fit: BoxFit.cover,
          ),
          Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              child: Row(children: <Widget>[
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: "$title\n".toUpperCase(),
                      style: Theme.of(context).textTheme.button),
                  TextSpan(
                      text: "$country".toUpperCase(),
                      style: TextStyle(color: kPrimaryColor.withOpacity(0.5)))
                ])),
                Spacer(),
                Text(
                  '\$$price',
                  style: TextStyle(
                      color: kPrimaryColor, fontWeight: FontWeight.bold),
                )
              ]))
        ]),
      ),
      decoration: BoxDecoration(
          color: kBackgroundColor,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)),
          boxShadow: [
            BoxShadow(
                color: kPrimaryColor.withOpacity(0.3),
                blurRadius: 20,
                offset: Offset(0, 10)),
          ]),
    );
  }
}
