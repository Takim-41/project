import 'package:flutter/material.dart';
import 'package:ogrenciden/screens/landing.dart';
import 'package:ogrenciden/screens/prod_category.dart';
import 'package:ogrenciden/screens/uni_catagory.dart';

final Map<String, WidgetBuilder> routes = {
  LandingScreen.routeName: (context) => LandingScreen(),
  CategoryScreen.routeName: (context) => CategoryScreen(),
  UniversityScreen.routeName: (context) => UniversityScreen()
};
