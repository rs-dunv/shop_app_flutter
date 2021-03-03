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
                  SvgPicture.asset("assets/icons/back_arrow.svg"),
                  Container(
                    padding: EdgeInsets.all(kDefaultPadding / 2),
                    child: SvgPicture.asset("assets/icons/sun.svg"),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 10),
                              blurRadius: 20,
                              color: kPrimaryColor)
                        ],
                        borderRadius: BorderRadius.circular(6),
                        color: Colors.white),
                  )
                ],
              ),
              Container(
                width: size.width * 0.85,
                height: size.height * 0.7,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        alignment: Alignment.centerLeft,
                        image: AssetImage("assets/images/img.png")),
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(20))),
              )
            ],
          )
        ],
      ),
    );
  }
}
