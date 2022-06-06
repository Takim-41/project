import 'package:flutter/material.dart';
import 'package:ogrenciden/LandingScreen/landing.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Welcome',
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 2500), () {});
    Navigator.pushReplacement(context,
        new MaterialPageRoute(builder: (context) => new LandingScreen()));
  }
}
