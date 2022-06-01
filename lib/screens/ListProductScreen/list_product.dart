import 'package:flutter/material.dart';
import 'package:ogrenciden/Widgets/OgrencidenAppBar.dart';
import 'package:ogrenciden/core/enums.dart';
import 'package:ogrenciden/core/size_config.dart';
import 'components/body.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({Key? key}) : super(key: key);
  static String routeName = "/ListProductScreen";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        body: Body(),
        bottomNavigationBar:
            CusBottomNavigationBar(selectedMenu: MenuState.home));
  }
}
