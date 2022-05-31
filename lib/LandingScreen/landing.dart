import 'package:flutter/material.dart';
import 'package:ogrenciden/LandingScreen/components/body.dart';
import 'package:ogrenciden/enums.dart';
import 'package:ogrenciden/size_config.dart';
import '../cus_bottom_nav_bar.dart';

class LandingScreen extends StatelessWidget {
  static String routeName = "/LandingScreen";
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CusBottomNavigationBar(selectedMenu:MenuState.home)
    );
  }
}


