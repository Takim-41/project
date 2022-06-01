import 'package:flutter/material.dart';
import 'package:ogrenciden/TempDatabase/tempProducts.dart';
import 'package:ogrenciden/core/size_config.dart';
import '../../ListProductScreen/components/item_cards.dart';
import '../../ProductInfoScreen/product_info_page.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: <Widget>[
        SizedBox(height: 30),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(10),
              vertical: getProportionateScreenHeight(10)),
          child: Text("My Favourites",
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: getProportionateScreenWidth(25),
                  color: Colors.black)),
        ),
        SizedBox(height: 5),
        Expanded(
            child: GridView.builder(
                itemCount: product.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: getProportionateScreenWidth(16),
                    crossAxisSpacing: getProportionateScreenWidth(16),
                    childAspectRatio: 0.75),
                itemBuilder: (context, index) => ItemCard(
                    product: product[index],
                    press: () => Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new ProductInfoPage())))))
      ],
    ));
  }
}
