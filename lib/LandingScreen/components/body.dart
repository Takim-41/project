import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ogrenciden/LandingScreen/components/search_bar.dart';
import 'package:ogrenciden/LandingScreen/components/uni_category.dart';
import 'package:ogrenciden/LandingScreen/components/universities.dart';

import '../../ProductCategoryScreen/prod_category.dart';
import 'app_name.dart';
import 'categories.dart';


class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);
  static const kSecondaryColor = Color(0xFF979797);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height:100),
            AppName(),
            SizedBox(height:30),
            SearchBar(),
            SizedBox(height:15),
            UniCategory(
              text: "Universities",
              press: () {}
            ),
            SizedBox(height:15),
            Universities(),
            SizedBox(height:15),
            UniCategory(
              text: "Popular Categories",
              press: () => Navigator.pushNamed(context, CategoryScreen.routeName)
            ),
            SizedBox(height:15),
            Categories(),
          ]
        )
      ),
    );
  }
}

