import 'package:ShopApp/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyButtonNavBar extends StatelessWidget {
  const MyButtonNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: EdgeInsets.only(
          left: kDefaultPadding * 2, right: kDefaultPadding * 2),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 35,
            color: kPrimaryColor.withOpacity(0.38))
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
              icon: SvgPicture.asset("assets/icons/flower.svg"),
              onPressed: null),
          IconButton(
              icon: SvgPicture.asset("assets/icons/heart-icon.svg"),
              onPressed: null),
          IconButton(
              icon: SvgPicture.asset("assets/icons/user-icon.svg"),
              onPressed: null)
        ],
      ),
    );
  }
}
