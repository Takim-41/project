import 'package:flutter/material.dart';
import '../../../TempDatabase/tempProducts.dart';
import '../../../core/size_config.dart';
import '../../ListProductScreen/list_product.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              CategoryCards(
                  image: "assets/images/books.png",
                  unis: "books",
                  press: () {
                    List<TempProduct> _searchProduct = [];
                    product.forEach((p) {
                      if (p.category == "Books") {
                        _searchProduct.add(p);
                      }
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ListScreen(product: _searchProduct),
                      ),
                    );
                  }),
              SizedBox(height: 10),
              CategoryCards(
                  image: "assets/images/electronics.png",
                  unis: "electronics",
                  press: () {
                    List<TempProduct> _searchProduct = [];
                    product.forEach((p) {
                      if (p.category == "Electronics") {
                        _searchProduct.add(p);
                      }
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ListScreen(product: _searchProduct),
                      ),
                    );
                  }),
              SizedBox(height: 10),
              CategoryCards(
                  image: "assets/images/notes.png",
                  unis: "notes",
                  press: () {
                    List<TempProduct> _searchProduct = [];
                    product.forEach((p) {
                      if (p.category == "Notes") {
                        _searchProduct.add(p);
                      }
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ListScreen(product: _searchProduct),
                      ),
                    );
                  }),
            ],
          ),
        ),
      ],
    );
  }
}

class CategoryCards extends StatelessWidget {
  const CategoryCards(
      {Key? key, required this.image, required this.press, required this.unis})
      : super(key: key);

  final String unis, image;
  final GestureTapCallback press;
  //final int numOfBrands;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: EdgeInsets.only(left: getProportionateScreenWidth(10)),
        child: SizedBox(
            width: SizeConfig.screenWidth * 0.9,
            height: getProportionateScreenHeight(90),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Stack(children: [
                  Image.asset(image, fit: BoxFit.cover),
                  Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                      colors: [
                        Color(0xFF343434).withOpacity(0.5),
                        Color(0xFF343434).withOpacity(0.1)
                      ],
                    )),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(10),
                        vertical: getProportionateScreenHeight(10)),
                    child: Text.rich(TextSpan(
                        style: TextStyle(color: Colors.white),
                        children: [
                          TextSpan(
                              text: "$unis",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: getProportionateScreenWidth(25),
                                  fontWeight: FontWeight.bold))
                          // TextSpan(text: " # products included") At the end can be added how many product is listed in this uni.
                        ])),
                  )
                ]))),
      ),
    );
  }
}
