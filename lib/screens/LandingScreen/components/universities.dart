import 'package:flutter/material.dart';
import 'package:ogrenciden/ListProductScreen/list_product.dart';
import 'package:ogrenciden/TempDatabase/tempProducts.dart';

import '../../../core/size_config.dart';


class Universities extends StatelessWidget {
  const Universities({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              UniversityCards(
                  image: "assets/images/bilkent_logo.png",
                  unis: "My University",
                  press: () {
                    List<TempProduct> _searchProduct = [] ;
                    product.forEach((p) {
                      if (p.university == "Bilkent University" ) {
                        _searchProduct.add(p);
                      }
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ListScreen(product: _searchProduct),
                      ),
                    );
                  }
              ),
              UniversityCards(
                  image: "assets/images/selcuk_uni_logo.png",
                  unis: "Selçuk University",
                  press: () {
                    List<TempProduct> _searchProduct = [] ;
                    product.forEach((p) {
                      if (p.university == "Selçuk University" ) {
                        _searchProduct.add(p);
                      }
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ListScreen(product: _searchProduct),
                      ),
                    );
                  }
              ),
              UniversityCards(
                  image: "assets/images/metu_logo.png",
                  unis: "Metu",
                  press: () {
                    List<TempProduct> _searchProduct = [] ;
                    product.forEach((p) {
                      if (p.university == "METU" ) {
                        _searchProduct.add(p);
                      }
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ListScreen(product: _searchProduct),
                      ),
                    );
                  }
              ),
              UniversityCards(
                  image: "assets/images/itu_logo.png",
                  unis: "ITU",
                  press: () {
                    List<TempProduct> _searchProduct = [] ;
                    product.forEach((p) {
                      if (p.university == "ITU" ) {
                        _searchProduct.add(p);
                      }
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ListScreen(product: _searchProduct),
                      ),
                    );
                  }
              ),
              UniversityCards(
                  image: "assets/images/boun_logo.png",
                  unis: "Boğaziçi University",
                  press: () {
                    List<TempProduct> _searchProduct = [] ;
                    product.forEach((p) {
                      if (p.university == "Boğaziçi University" ) {
                        _searchProduct.add(p);
                      }
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ListScreen(product: _searchProduct),
                      ),
                    );
                  }
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class UniversityCards extends StatelessWidget {
  const UniversityCards({
    Key? key,
    required this.image,
    required this.press,
    required this.unis
  }) : super(key: key);

  final String unis, image;
  final GestureTapCallback press;
  //final int numOfBrands;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
        child: SizedBox(
            width: getProportionateScreenWidth(120),
            height: getProportionateScreenHeight(120),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Stack(
                    children: [
                      Image.asset(
                          image,
                          fit: BoxFit.cover
                      ),
                      Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFF343434).withOpacity(0.5),
                                Color(0xFF343434).withOpacity(0.1)
                              ],
                            )
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: getProportionateScreenWidth(10),
                            vertical: getProportionateScreenHeight(10)
                        ),
                        child: Text.rich(
                            TextSpan(
                                style: TextStyle(color: Colors.white),
                                children:[
                                  TextSpan(
                                      text: "$unis",
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: getProportionateScreenWidth(15),
                                          fontWeight: FontWeight.bold
                                      )
                                  )
                                  // TextSpan(text: " # products included") At the end can be added how many product is listed in this uni.
                                ]
                            )
                        ),
                      )
                    ]
                )
            )
        ),
      ),
    );
  }
}

