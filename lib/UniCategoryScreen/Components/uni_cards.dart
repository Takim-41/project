import 'package:flutter/material.dart';
import 'package:ogrenciden/TempDatabase/tempUniversities.dart';
import 'package:ogrenciden/core/size_config.dart';

class UniCategoryCards extends StatelessWidget {
  final TempUniversities uni_categories;
  final GestureTapCallback press;
  const UniCategoryCards(
      {Key? key, required this.uni_categories, required this.press})
      : super(key: key);

  //final int numOfBrands;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: press,
          child: Padding(
              padding: EdgeInsets.only(left: getProportionateScreenWidth(10)),
              child: SizedBox(
                  width: SizeConfig.screenWidth * 0.9,
                  height: getProportionateScreenHeight(90),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Stack(children: [
                        Image.asset(uni_categories.image, //image,
                            fit: BoxFit.cover),
                        Container(
                          //padding: EdgeInsets.symmetric(vertical: getProportionateScreenWidth(10)),
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
                                    text: uni_categories.name, //"$unis",
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize:
                                            getProportionateScreenWidth(25),
                                        fontWeight: FontWeight.bold))
                                // TextSpan(text: " # products included") At the end can be added how many product is listed in this uni.
                              ])),
                        )
                      ])))),
        ),
        SizedBox(height: 10)
      ],
    );
  }
}
