import 'package:flutter/material.dart';
import 'package:ogrenciden/TempDatabase/tempProducts.dart';


import '../../Widgets/OgrencidenAppBar.dart';
import '../../core/enums.dart';
import '../../core/size_config.dart';
import 'components/body.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({Key? key, required this.product});
  final List<TempProduct> product;

  static String routeName = "/ListProductScreen";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        body: Body(product: product),
        bottomNavigationBar: CusBottomNavigationBar(selectedMenu:MenuState.home)
    );

  }
}
