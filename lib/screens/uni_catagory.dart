import 'package:flutter/material.dart';
import 'package:ogrenciden/Widgets/OgrencidenAppBar.dart';
import 'package:ogrenciden/core/enums.dart';

import '../UniCategoryScreen/Components/body.dart';


class UniversityScreen extends StatelessWidget {
  static String routeName = "/UniCategoryScreen";
  const UniversityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Body(),
        bottomNavigationBar:
            CusBottomNavigationBar(selectedMenu: MenuState.home));
  }
}
