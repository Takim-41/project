import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ogrenciden/Widgets/landing/app_name.dart';
import 'package:ogrenciden/Widgets/landing/heading.dart';
import 'package:ogrenciden/Widgets/landing/search_bar.dart';
import 'package:ogrenciden/Widgets/landing/universities.dart';
import 'package:ogrenciden/screens/prod_category.dart';
import 'package:ogrenciden/screens/uni_catagory.dart';
import 'categories.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);
  static const kSecondaryColor = Color(0xFF979797);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
          child: Column(children: <Widget>[
        SizedBox(height: 50),
        AppName(),
        SizedBox(height: 30),
        SearchBar(),
        SizedBox(height: 15),
        Heading(
            text: "Universities",
            press: () =>
                Navigator.pushNamed(context, UniversityScreen.routeName)),
        SizedBox(height: 15),
        Universities(),
        SizedBox(height: 15),
        Heading(
            text: "Popular Categories",
            press: () =>
                Navigator.pushNamed(context, CategoryScreen.routeName)),
        SizedBox(height: 15),
        Categories(),
      ])),
    );
  }
}
