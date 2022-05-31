import 'package:flutter/material.dart';

import '../enums.dart';
import '../ogrenciden_appbar/widgets/OgrencidenAppBar.dart';
import 'Components/body.dart';

class UniversityScreen extends StatelessWidget {
  static String routeName = "/UniCategoryScreen";
  const UniversityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CusBottomNavigationBar(selectedMenu:MenuState.home)
    );
  }
}
