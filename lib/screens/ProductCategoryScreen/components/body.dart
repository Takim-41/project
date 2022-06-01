import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:ogrenciden/screens/ProductCategoryScreen/components/category_cards.dart';
import 'package:ogrenciden/TempDatabase/tempCatagories.dart';
import 'package:ogrenciden/core/size_config.dart';
import 'package:ogrenciden/screens/LandingScreen/landing.dart';

import 'package:ogrenciden/screens/ListProductScreen/list_product.dart';
import 'package:ogrenciden/screens/ProductCategoryScreen/components/category_cards.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: <Widget>[
        SizedBox(height: 15),
        Row(
          children: [
            IconButton(
                icon: SvgPicture.asset("assets/icons/arrow-left.svg"),
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(30)),
                onPressed: () =>
                    Navigator.pushNamed(context, LandingScreen.routeName)),
          ],
        ),
        SizedBox(height: 30),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: <Widget>[
              Text("Categories",
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(25),
                    color: Colors.black.withOpacity(0.7),
                    fontWeight: FontWeight.bold,
                  ))
            ],
          ),
        ),
        SizedBox(height: 15),
        Expanded(
            child: ListView.builder(
                itemCount: categories.length,
                itemBuilder: (context, index) => CategoryCards(
                    categories: categories[index],
                    press: () =>
                        Navigator.pushNamed(context, ListScreen.routeName))))

        /*CategoryCards(
                  image: "assets/images/books.png",
                  unis: "books",
                  press: () {}
              ),
              SizedBox(height:10),
              CategoryCards(
                  image: "assets/images/electronics.png",
                  unis: "electronics",
                  press: () {}
              ),
              SizedBox(height:10),
              CategoryCards(
                  image: "assets/images/notes.png",
                  unis: "notes",
                  press: () {}
              ),*/
      ],
    ));
  }
}
