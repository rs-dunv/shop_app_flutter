import 'package:ShopApp/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HeaderCard extends StatelessWidget {
  const HeaderCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.2,
      margin: EdgeInsets.only(bottom: kDefaultPadding * 1.5),
      decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(60),
              bottomRight: Radius.circular(60))),
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Row(children: <Widget>[
              Text("Hi DuCena",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white)),
              Spacer(),
              Image.asset("assets/images/logo.png")
            ]),
          ),
          Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              height: size.height * 0.05,
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 50,
                            offset: Offset(0, 10),
                            color: kPrimaryColor)
                      ],
                      color: Colors.white),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          onChanged: (value) {},
                          decoration: InputDecoration(
                              hintText: "Search",
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              hintStyle: TextStyle(
                                color: kPrimaryColor.withOpacity(0.5),
                              )),
                        ),
                      ),
                      SvgPicture.asset(
                        "assets/icons/search.svg",
                      )
                    ],
                  )))
        ],
      ),
    );
  }
}
