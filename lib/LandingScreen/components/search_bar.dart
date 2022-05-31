import 'package:flutter/material.dart';

import '../../size_config.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);
  static const kSecondaryColor = Color(0xFF979797);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20)
        ),
        child: Row(
          children: [
            Container(
              width: SizeConfig.screenWidth * 0.8,
              height: 50,
              decoration: BoxDecoration(
                  color: kSecondaryColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(15)
              ),
              child: TextField(
                onChanged: (value){
                  //Searching part of the entered product !!!!!!!!!
                },
                decoration: InputDecoration(
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  hintText: "Search Product",
                  prefixIcon: Icon(Icons.search),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20),
                    vertical: getProportionateScreenHeight(18),
                  ),
                ),
              ),
            )
          ],
        )
    );
  }
}