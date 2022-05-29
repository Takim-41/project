import 'package:flutter/material.dart';
import 'package:ogrenciden/LandingScreen/landing.dart';
import 'package:ogrenciden/ProductCategoryScreen/prod_category.dart';
import 'package:ogrenciden/UniCategoryScreen/uni_catagory.dart';


final Map<String, WidgetBuilder> routes = {
  LandingScreen.routeName: (context) => LandingScreen(),
  CategoryScreen.routeName: (context) => CategoryScreen(),
  UniversityScreen.routeName: (context) => UniversityScreen()
};