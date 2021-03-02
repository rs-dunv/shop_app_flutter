import 'package:ShopApp/constants.dart';
import 'package:ShopApp/screens/details/components/image_and_icon_card.dart';
import 'package:ShopApp/screens/details/components/title_and_price.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIconCard(size: size),
          TitleAndPrice(title: "Angelica", country: "Russia", price: 400),
          SizedBox(
            height: kDefaultPadding,
          ),
          Row(children: <Widget>[
            SizedBox(
              width: size.width / 2,
              height: 84,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(30))),
                onPressed: () {},
                child: Text(
                  "Buy Now",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                color: kPrimaryColor,
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {},
                child: Text(
                  "Description",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: kDefaultPadding,
            )
          ])
        ],
      ),
    );
  }
}
