import 'package:flutter/material.dart';

import '../../core/size_config.dart';

class AppName extends StatelessWidget {
  const AppName({Key? key}) : super(key: key);
  static const kSecondaryColor = Color(0xFF979797);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Column(
        children: <Widget>[
          Text("Öğrenciden",
              style: TextStyle(
                fontSize: getProportionateScreenWidth(36),
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ))
        ],
      ),
    );
  }
}
