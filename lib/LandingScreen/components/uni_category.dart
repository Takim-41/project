import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import '../../size_config.dart';

class UniCategory extends StatelessWidget {
  const UniCategory({
    Key? key,
    required this.press,
    required this.text
  }) : super(key: key);

  final String text;
  final GestureTapCallback press;

  static const kSecondaryColor = Color(0xFF979797);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
                text,
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: getProportionateScreenWidth(18),
                    color: Colors.black
                )
            ),
            GestureDetector(
              onTap: press,
              child:Text(
                  "See More",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: kSecondaryColor.withOpacity(0.8),
                  )
              )
            )
          ],
        )
    );
  }
}