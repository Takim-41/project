import 'package:flutter/material.dart';

import '../cus_bottom_nav_bar.dart';
import '../enums.dart';
import '../size_config.dart';
import 'components/body.dart';

class CategoryScreen extends StatelessWidget {
  static String routeName = "/ProductCategoryScreen";
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CusBottomNavigationBar(selectedMenu:MenuState.home)
    );
  }
}
