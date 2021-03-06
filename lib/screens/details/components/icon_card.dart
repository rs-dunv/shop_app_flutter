import 'package:ShopApp/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconCard extends StatelessWidget {
  const IconCard({
    Key key,
    this.icon,
  }) : super(key: key);
  final String icon;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        height: 62,
        width: 62,
        margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
        padding: EdgeInsets.all(kDefaultPadding / 2),
        decoration: BoxDecoration(
            color: kBackgroundColor,
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 22,
                  color: kPrimaryColor.withOpacity(0.3)),
              BoxShadow(
                  offset: Offset(-15, -15), blurRadius: 20, color: Colors.white)
            ],
            borderRadius: BorderRadius.circular(6)),
        child: SvgPicture.asset(icon));
  }
}
