import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../LandingScreen/landing.dart';
import '../../size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height:15),
                Row(
                  children: [
                    IconButton(
                        icon: SvgPicture.asset("assets/icons/arrow-left.svg"),
                        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(30)),
                        onPressed: () => Navigator.pushNamed(context, LandingScreen.routeName)
                    ),
                  ],
                ),
                SizedBox(height:30),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20)
                  ),
                  child: Column(
                    children: <Widget>[
                      Text(
                          "Universities",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(25),
                            color: Colors.black.withOpacity(0.7),
                            fontWeight: FontWeight.bold,
                          )
                      )
                    ],
                  ),
                ),
                SizedBox(height:15),
                CategoryCards(
                    image: "assets/images/bilkent_logo.png",
                    unis: "Bilkent University",
                    press: () {}
                ),
                SizedBox(height:10),
                CategoryCards(
                    image: "assets/images/boun_logo.png",
                    unis: "Boğaziçi University",
                    press: () {}
                ),
                SizedBox(height:10),
                CategoryCards(
                    image: "assets/images/itu_logo.png",
                    unis: "İstanbul Technic University",
                    press: () {}
                ),
                SizedBox(height:10),
                CategoryCards(
                    image: "assets/images/selcuk_uni_logo.png",
                    unis: "Selçuk University",
                    press: () {}
                ),
              ],
            )
        )
    );
  }
}

class CategoryCards extends StatelessWidget {
  const CategoryCards({
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
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(10)),
      child: SizedBox(
          width: SizeConfig.screenWidth * 0.9,
          height: getProportionateScreenHeight(90),
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
                                        fontSize: getProportionateScreenWidth(25),
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
    );
  }
}