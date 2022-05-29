import 'package:flutter/material.dart';
import 'package:ogrenciden/LandingScreen/landing.dart';
import 'package:ogrenciden/ProductCategoryScreen/prod_category.dart';
import 'package:ogrenciden/routs.dart';
import 'package:ogrenciden/loginScreen.dart';
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
      title: 'Flutter Demo',
      theme: OgrencidenTheme.lightTheme,
      home: LandingScreen(),
      routes:routes
    );
  }
}

