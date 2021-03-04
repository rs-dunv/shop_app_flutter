import 'package:ShopApp/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BodyDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset("assets/icons/back_arrow.svg"),
                  ),
                  CardAndIcon(image: "assets/icons/sun.svg"),
                  CardAndIcon(
                    image: "assets/icons/icon_2.svg",
                  ),
                  CardAndIcon(
                    image: "assets/icons/icon_3.svg",
                  ),
                  CardAndIcon(
                    image: "assets/icons/icon_4.svg",
                  )
                ],
              ),
              Container(
                width: size.width * 0.75,
                height: size.height * 0.7,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        alignment: Alignment.centerLeft,
                        image: AssetImage("assets/images/img.png")),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        topLeft: Radius.circular(50))),
              )
            ],
          )
        ],
      ),
    );
  }
}

class CardAndIcon extends StatelessWidget {
  const CardAndIcon({Key key, this.image}) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(kDefaultPadding / 2),
      margin: EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding * 2),
      height: size.width * 0.15,
      width: size.width * 0.15,
      child: SvgPicture.asset(image),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 22,
            color: kPrimaryColor.withOpacity(0.3)),
      ], borderRadius: BorderRadius.circular(6), color: Colors.white),
    );
  }
}
