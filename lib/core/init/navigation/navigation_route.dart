import 'package:flutter/material.dart';
import 'package:ogrenciden/core/constants/navigation/navigation_constants.dart';
import 'package:ogrenciden/ClientProfileInfo/client_profile_info.dart';
import 'package:ogrenciden/screens/product_info_page.dart';

class NavigationRoute {
  static final NavigationRoute _instance = NavigationRoute._init();
  static NavigationRoute get instance => _instance;

  NavigationRoute._init();

  //getting arguments passed in while calling Navigator.pushNamed
  Route<dynamic>? generateRoute(RouteSettings args) {
    switch (args.name) {
      case NavigationConstants.product_info:
        return normalNavigate(const ProductInfoPage());
      case NavigationConstants.client_profile:
        return normalNavigate(ClientProfileInfo());
      default: // if there is no such named route, route to that widget
        return null; //normalNavigate(const DefaultScreen());
    }
  }

  //returns MaterialPageRoute related page route
  MaterialPageRoute normalNavigate(Widget widget) {
    return MaterialPageRoute(
      builder: (context) => widget,
    );
  }
}
