import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:ogrenciden/LandingScreen/landing.dart';
import 'package:ogrenciden/LoginScreens/loginScreen.dart';
import 'package:ogrenciden/ProductCategoryScreen/prod_category.dart';
import 'package:ogrenciden/routs.dart';
import 'package:ogrenciden/LoginScreens/signupScreen.dart';

=======
import 'package:ogrenciden/core/init/navigation/navigation_route.dart';
import 'package:ogrenciden/core/init/navigation/navigation_service.dart';
import 'package:ogrenciden/screens/landing.dart';
import 'package:ogrenciden/screens/prod_category.dart';
import 'package:ogrenciden/core/routs.dart';
import 'package:ogrenciden/screens/login.dart';
import 'package:ogrenciden/theme/ogrenciden_theme.dart';
>>>>>>> main

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
<<<<<<< HEAD
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: LandingScreen(),
        //home: MyHomePage(title: 'trial'),
        home: login(),
      routes:routes
=======
      title: 'Ogrenciden',
      theme: OgrencidenTheme.lightTheme,
      initialRoute: '/product_info_page', //initially displayed page
      onGenerateRoute:
          NavigationRoute.instance.generateRoute, // route controller
      navigatorKey: NavigationService
          .instance.navigatorKey, //GlobalKey as the NavigatorKey
>>>>>>> main
    );
  }
}
