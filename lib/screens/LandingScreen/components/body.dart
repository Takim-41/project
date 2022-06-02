import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../../../LandingScreen/components/universities.dart';
import '../../../Widgets/landing/app_name.dart';
import '../../../Widgets/landing/heading.dart';
import '../../../Widgets/landing/search_bar.dart';
import '../../prod_category.dart';
import '../../uni_catagory.dart';
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
            SizedBox(height:50),
            AppName(),
            SizedBox(height:30),
            SearchBar(),
            SizedBox(height:15),
            Heading(
              text: "Universities",
              press: () => Navigator.pushNamed(context, UniversityScreen.routeName)
            ),
            SizedBox(height:15),
            Universities(),
            SizedBox(height:15),
            Heading(
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

