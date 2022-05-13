import 'package:flutter/material.dart';
import 'package:ogrenciden/core/init/navigation/navigation_route.dart';
import 'package:ogrenciden/core/init/navigation/navigation_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/product_info_page', //initially displayed page
      onGenerateRoute:
          NavigationRoute.instance.generateRoute, // route controller
      navigatorKey: NavigationService
          .instance.navigatorKey, //GlobalKey as the NavigatorKey
    );
  }
}
