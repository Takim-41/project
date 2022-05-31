import 'package:flutter/material.dart';

import '../../size_config.dart';
import '../../TempDatabase/tempProducts.dart';

class ItemCard extends StatelessWidget {
  final TempProduct product;
  final GestureTapCallback press;
  const ItemCard({
    Key? key, required this.product, required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              padding: EdgeInsets.symmetric(vertical: getProportionateScreenHeight(1)),
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(16)
              ),
              child: Image.asset(product.image)
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: getProportionateScreenWidth(5),
                horizontal: getProportionateScreenHeight(12)
            ),
            child: Text(product.title, style: TextStyle(fontSize: 12)),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: getProportionateScreenWidth(1),
                horizontal: getProportionateScreenHeight(12)
            ),
            child: Text("${product.price} ₺", style: TextStyle(fontWeight: FontWeight.bold)),
          )
        ],
      ),
    );

  }
}