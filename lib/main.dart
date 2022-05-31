import 'package:flutter/material.dart';
import 'package:ogrenciden/core/routs.dart';
import 'package:ogrenciden/screens/LoginScreens/loginScreen.dart';

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
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        //home: LandingScreen(),
        //home: MyHomePage(title: 'trial'),
        home: login(),
        routes: routes);
  }
}
