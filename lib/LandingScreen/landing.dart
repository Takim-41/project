import 'package:flutter/material.dart';
import 'package:ogrenciden/LandingScreen/components/body.dart';

import '../Widgets/OgrencidenAppBar.dart';
import '../core/enums.dart';
import '../core/size_config.dart';




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


