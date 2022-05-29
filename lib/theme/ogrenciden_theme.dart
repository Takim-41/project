import 'package:flutter/material.dart';

class OgrencidenTheme {
  static ThemeData get lightTheme {
    //1
    return ThemeData(
        //2
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        bottomAppBarColor: Colors.white.withOpacity(0.9),
        fontFamily: 'Poppins', //3
        buttonTheme: ButtonThemeData(
          // 4
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
          buttonColor: const Color(0xff2b6ea7),
        ));
  }
}
