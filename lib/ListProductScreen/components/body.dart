import 'package:flutter/material.dart';
import 'package:ogrenciden/ProductInfoScreen/product_info_page.dart';
import 'package:ogrenciden/TempDatabase/tempProducts.dart';

//import 'package:multi_select_flutter/multi_select_flutter.dart';


import '../../Widgets/landing/search_bar.dart';
import '../../core/size_config.dart';
import 'filter_and_sort.dart';
import 'item_cards.dart';

class Body extends StatelessWidget {

  const Body({Key? key, required this.product});

  final List<TempProduct> product;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(height:30),
            SearchBar(),
            SizedBox(height:2),
            FilterAndSort(),
            SizedBox(height:5),
            // - I need to implement the multiSelectDialog for filter and sort

            // SizedBox(height:15),
            Expanded(child: GridView.builder(
                itemCount: product.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: getProportionateScreenWidth(16),
                    crossAxisSpacing: getProportionateScreenWidth(16),
                    childAspectRatio: 0.75
                ),
                itemBuilder: (context, index) => ItemCard(product: product[index], press: () => Navigator.push(context, new MaterialPageRoute(builder: (context) => new ProductInfoPage(product: product[index]))))
            )
            )
          ],
        )
    );
  }
}




