import 'package:flutter/material.dart';
import 'package:ogrenciden/Widgets/OgrencidenAppBar.dart';
import 'package:ogrenciden/core/enums.dart';
import 'package:ogrenciden/core/size_config.dart';
import 'components/body.dart';

class FavScreen extends StatelessWidget {
  static String routeName = "/FavScreen";
  const FavScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        body: Body(),
        bottomNavigationBar:
            CusBottomNavigationBar(selectedMenu: MenuState.favourite));
  }
}
