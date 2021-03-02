import 'package:ShopApp/constants.dart';
import 'package:ShopApp/screens/details/details_screen.dart';
import 'package:flutter/material.dart';

class RecomendsPlants extends StatelessWidget {
  const RecomendsPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomendPlantCard(
            image: "assets/images/image_1.png",
            title: "Samatha",
            country: 'Russia',
            price: 440,
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (content) => DetailsScreen()));
            },
          ),
          RecomendPlantCard(
            image: "assets/images/image_2.png",
            title: "Angelica",
            country: 'Russia',
            price: 400,
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (content) => DetailsScreen()));
            },
          ),
          RecomendPlantCard(
            image: "assets/images/image_3.png",
            title: "Samatha",
            country: 'Russia',
            price: 690,
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (content) => DetailsScreen()));
            },
          ),
          RecomendPlantCard(
            image: "assets/images/image_1.png",
            title: "Samatha",
            country: 'Russia',
            price: 440,
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (content) => DetailsScreen()));
            },
          )
        ],
      ),
    );
  }
}

class RecomendPlantCard extends StatelessWidget {
  const RecomendPlantCard(
      {Key key, this.image, this.title, this.country, this.price, this.press})
      : super(key: key);
  final String image, title, country;
  final int price;
  final Function press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset("$image"),
          GestureDetector(
            onTap: press,
            child: Container(
                child: Row(children: <Widget>[
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "$title\n".toUpperCase(),
                          style: Theme.of(context).textTheme.button),
                      TextSpan(
                          text: "$country".toUpperCase(),
                          style:
                              TextStyle(color: kPrimaryColor.withOpacity(0.5))),
                    ]),
                  ),
                  Spacer(),
                  Text("\$$price",
                      style: Theme.of(context)
                          .textTheme
                          .button
                          .copyWith(color: kPrimaryColor))
                ]),
                padding: EdgeInsets.all(kDefaultPadding / 2),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 50,
                          offset: Offset(0, 10),
                          color: kPrimaryColor.withOpacity(0.3)),
                    ])),
          )
        ],
      ),
    );
  }
}
