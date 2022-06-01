import 'package:flutter/material.dart';
import 'package:ogrenciden/size_config.dart';


import '../enums.dart';
import '../ogrenciden_appbar/widgets/OgrencidenAppBar.dart';
import 'components/body.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({Key? key}) : super(key: key);
  static String routeName = "/ListProductScreen";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CusBottomNavigationBar(selectedMenu:MenuState.home)
    );
    
  }
}
