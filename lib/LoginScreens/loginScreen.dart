import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:ogrenciden/LandingScreen/landing.dart';
import 'package:ogrenciden/LoginScreens/login.dart';


//import 'package:login_signup_screen/login_form.dart';

class login extends StatefulWidget {
  static String routeName = "/LoginScreens";
  const login({Key? key}) : super(key: key);



  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  var formKey = GlobalKey<FormState>();

  var tfemail = TextEditingController();
  var tfpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var sceenInfo = MediaQuery.of(context);
    final double sceenWidthInfo = sceenInfo.size.width;
    final double sceenHeightInfo = sceenInfo.size.height;
    return Scaffold(
      backgroundColor: Colors.white,
     // appBar: AppBar(
      //  backgroundColor: Colors.white,
   //   ),
      body: Container(
        margin: EdgeInsets.only(top:24),
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
              Colors.blueAccent,
              Colors.white,
              Colors.white,
              Colors.white,
              Colors.white,
              Colors.blueAccent],),

        ),
          child: Center(
            child: Loginp(),
          ),
    ),
    );
  }
}
