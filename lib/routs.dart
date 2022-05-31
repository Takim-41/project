import 'package:flutter/material.dart';
import 'package:ogrenciden/FavScreen/favorites.dart';
import 'package:ogrenciden/LandingScreen/landing.dart';
import 'package:ogrenciden/ListProductScreen/list_product.dart';
import 'package:ogrenciden/LoginScreens/loginScreen.dart';
import 'package:ogrenciden/LoginScreens/signupScreen.dart';
import 'package:ogrenciden/ProductCategoryScreen/prod_category.dart';
import 'package:ogrenciden/ProductInfoScreen/product_info_page.dart';
import 'package:ogrenciden/UniCategoryScreen/uni_catagory.dart';

import 'ClientProfileInfo/client_profile_info.dart';
import 'LoginScreens/forgetPasswordScreen.dart';


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