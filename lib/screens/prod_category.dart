import 'package:flutter/material.dart';

<<<<<<< HEAD:lib/ProductCategoryScreen/prod_category.dart
import '../enums.dart';
import '../ogrenciden_appbar/widgets/OgrencidenAppBar.dart';
import '../size_config.dart';
import 'components/body.dart';
=======
import '../Widgets/cus_bottom_nav_bar.dart';
import '../core/enums.dart';
import '../core/size_config.dart';
import '../Widgets/prod_category/body.dart';
>>>>>>> main:lib/screens/prod_category.dart

class CategoryScreen extends StatelessWidget {
  static String routeName = "/ProductCategoryScreen";
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        body: Body(),
        bottomNavigationBar:
            CusBottomNavigationBar(selectedMenu: MenuState.home));
  }
}
