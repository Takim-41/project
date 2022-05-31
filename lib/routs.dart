import 'package:flutter/material.dart';
import 'package:ogrenciden/LandingScreen/landing.dart';
import 'package:ogrenciden/ListProductScreen/list_product.dart';
import 'package:ogrenciden/ProductCategoryScreen/prod_category.dart';
import 'package:ogrenciden/ProductInfoScreen/product_info_page.dart';
import 'package:ogrenciden/UniCategoryScreen/uni_catagory.dart';

import 'ClientProfileInfo/client_profile_info.dart';


final Map<String, WidgetBuilder> routes = {
  LandingScreen.routeName: (context) => LandingScreen(),
  CategoryScreen.routeName: (context) => CategoryScreen(),
  UniversityScreen.routeName: (context) => UniversityScreen(),
  ListScreen.routeName: (context) => ListScreen(),
  ProductInfoPage.routeName: (context) => ProductInfoPage(),
  ClientProfileInfo.routeName: (context) => ClientProfileInfo()
};