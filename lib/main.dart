import 'package:flutter/material.dart';
import 'package:ogrenciden/core/init/navigation/navigation_route.dart';
import 'package:ogrenciden/core/init/navigation/navigation_service.dart';
import 'package:ogrenciden/screens/landing.dart';
import 'package:ogrenciden/screens/prod_category.dart';
import 'package:ogrenciden/core/routs.dart';
import 'package:ogrenciden/screens/login.dart';
import 'package:ogrenciden/theme/ogrenciden_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ogrenciden',
      theme: OgrencidenTheme.lightTheme,
      initialRoute: '/product_info_page', //initially displayed page
      onGenerateRoute:
          NavigationRoute.instance.generateRoute, // route controller
      navigatorKey: NavigationService
          .instance.navigatorKey, //GlobalKey as the NavigatorKey
    );
  }
}
