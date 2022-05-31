import 'package:flutter/material.dart';

<<<<<<< HEAD:lib/UniCategoryScreen/uni_catagory.dart
import '../enums.dart';
import '../ogrenciden_appbar/widgets/OgrencidenAppBar.dart';
import 'Components/body.dart';
=======
import '../Widgets/cus_bottom_nav_bar.dart';
import '../core/enums.dart';
import '../Widgets/uni_category/body.dart';
>>>>>>> main:lib/screens/uni_catagory.dart

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
