import 'package:ShopApp/constants.dart';
import 'package:ShopApp/screens/home/components/header_with_search_box.dart';
import 'package:ShopApp/screens/home/components/title_with_more_btn.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitileWithMoreBtn(
            title: 'Recommended',
            press: () {
              print('10');
            },
          )
        ],
      ),
    );
  }
}
