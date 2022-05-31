import 'package:flutter/material.dart';

import '../enums.dart';
import '../ogrenciden_appbar/widgets/OgrencidenAppBar.dart';
import '../size_config.dart';
import 'components/body.dart';

class FavScreen extends StatelessWidget {
  static String routeName = "/FavScreen";
  const FavScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        body: Body(),
        bottomNavigationBar: CusBottomNavigationBar(selectedMenu:MenuState.favourite)
    );
  }
}