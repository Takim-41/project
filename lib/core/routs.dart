import 'package:flutter/material.dart';
import 'package:ogrenciden/ProductInfoScreen/product_info_page.dart';
import 'package:ogrenciden/screens/client_profile_info.dart';
import 'package:ogrenciden/screens/FavScreen/favorites.dart';
import 'package:ogrenciden/screens/LandingScreen/landing.dart';
import 'package:ogrenciden/screens/ListProductScreen/list_product.dart';
import 'package:ogrenciden/LoginScreens/loginScreen.dart';
import 'package:ogrenciden/screens/prod_category.dart';
import 'package:ogrenciden/screens/uni_catagory.dart';

final Map<String, WidgetBuilder> routes = {
  LandingScreen.routeName: (context) => const LandingScreen(),
  CategoryScreen.routeName: (context) => const CategoryScreen(),
  UniversityScreen.routeName: (context) => const UniversityScreen(),
  ListScreen.routeName: (context) => const ListScreen(
        product: [],
      ),
  ProductInfoPage.routeName: (context) => const ProductInfoPage(),
  ClientProfileInfo.routeName: (context) => ClientProfileInfo(),
  FavScreen.routeName: (context) => const FavScreen(),
  login.routeName: (context) => const login(),
};
