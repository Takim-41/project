import 'package:flutter/material.dart';
import 'package:ogrenciden/ClientProfileInfo/client_profile_info.dart';
import 'package:ogrenciden/screens/FavScreen/favorites.dart';
import 'package:ogrenciden/screens/LandingScreen/landing.dart';
import 'package:ogrenciden/screens/ListProductScreen/list_product.dart';
import 'package:ogrenciden/screens/LoginScreens/forgetPasswordScreen.dart';
import 'package:ogrenciden/screens/LoginScreens/loginScreen.dart';
import 'package:ogrenciden/screens/LoginScreens/signupScreen.dart';
import 'package:ogrenciden/screens/ProductInfoScreen/product_info_page.dart';
import 'package:ogrenciden/screens/prod_category.dart';
import 'package:ogrenciden/screens/uni_catagory.dart';

final Map<String, WidgetBuilder> routes = {
  LandingScreen.routeName: (context) => LandingScreen(),
  CategoryScreen.routeName: (context) => CategoryScreen(),
  UniversityScreen.routeName: (context) => UniversityScreen(),
  ListScreen.routeName: (context) => ListScreen(),
  ProductInfoPage.routeName: (context) => ProductInfoPage(),
  ClientProfileInfo.routeName: (context) => ClientProfileInfo(),
  FavScreen.routeName: (context) => FavScreen(),
  login.routeName: (context) => login(),
  signup.routeName: (context) => signup(),
  password.routeName: (context) => password()
};
