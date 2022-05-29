import 'package:flutter/material.dart';

import '../cus_bottom_nav_bar.dart';
import '../enums.dart';
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
