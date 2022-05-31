import 'package:flutter/material.dart';
import 'package:ogrenciden/widgets/landing/body.dart';
import 'package:ogrenciden/core/enums.dart';
import 'package:ogrenciden/core/size_config.dart';
import '../Widgets/cus_bottom_nav_bar.dart';

class LandingScreen extends StatelessWidget {
  static String routeName = "/LandingScreen";
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        body: Body(),
        bottomNavigationBar:
            CusBottomNavigationBar(selectedMenu: MenuState.home));
  }
}
