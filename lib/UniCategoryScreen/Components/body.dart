import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ogrenciden/UniCategoryScreen/Components/uni_cards.dart';

import '../../LandingScreen/landing.dart';
import '../../ListProductScreen/list_product.dart';
import '../../size_config.dart';

import 'package:ogrenciden/TempDatabase/tempUniversities.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
            child: Column(
              children: <Widget>[
                SizedBox(height:15),
                Row(
                  children: [
                    IconButton(
                        icon: SvgPicture.asset("assets/icons/arrow-left.svg"),
                        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(30)),
                        onPressed: () => Navigator.pushNamed(context, LandingScreen.routeName)
                    ),
                  ],
                ),
                SizedBox(height:30),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20)
                  ),
                  child: Column(
                    children: <Widget>[
                      Text(
                          "Universities",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(25),
                            color: Colors.black.withOpacity(0.7),
                            fontWeight: FontWeight.bold,
                          )
                      )
                    ],
                  ),
                ),
                SizedBox(height:15),
                Expanded(child: ListView.builder(
                    itemCount: uni_categories.length,
                    itemBuilder: (context, index) => UniCategoryCards(uni_categories: uni_categories[index], press: () => Navigator.pushNamed(context, ListScreen.routeName)))
                )
              ],
            )
    );
  }
}