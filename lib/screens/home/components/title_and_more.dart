import 'package:ShopApp/constants.dart';
import 'package:flutter/material.dart';

class TitleAndMore extends StatelessWidget {
  const TitleAndMore({
    Key key,
    this.title,
    this.press,
  }) : super(key: key);
  final String title;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(children: <Widget>[
        Container(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: kDefaultPadding / 4),
                child: Text(
                  "$title",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 7,
                  child: Container(
                    margin: EdgeInsets.only(right: kDefaultPadding / 4),
                    decoration:
                        BoxDecoration(color: kPrimaryColor.withOpacity(0.2)),
                  ),
                ),
              )
            ],
          ),
        ),
        Spacer(),
        FlatButton(
          onPressed: press,
          child: Text("More"),
          color: kPrimaryColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        )
      ]),
    );
  }
}
