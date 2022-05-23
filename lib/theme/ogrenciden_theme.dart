import 'package:flutter/material.dart';

class OgrencidenTheme {
  static ThemeData get lightTheme {
    //1
    return ThemeData(
        //2
        primaryColor: const Color(0xff2b6ea7),
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Montserrat', //3
        buttonTheme: ButtonThemeData(
          // 4
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
          buttonColor: const Color(0xff889bab),
        ));
  }
}
