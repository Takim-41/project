import 'dart:async';
//import 'dart:html';
import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:ogrenciden/LoginScreens/home.dart';
import 'package:ogrenciden/LoginScreens/Register.dart';
import 'package:ogrenciden/LoginScreens/password-text.dart';
import 'package:ogrenciden/LoginScreens/text-field2.dart';

class Loginp extends StatefulWidget {
  const Loginp({Key? key}) : super(key: key);

  @override
  _LoginpState createState() => _LoginpState();
}

class _LoginpState extends State<Loginp> {
  Icon accountIcon = Icon(
    Icons.account_circle,
    color: Colors.indigoAccent,
  );
  double val = 0;
  bool switchScreen = true;
  Timer timer = Timer(Duration(seconds: 1),(){});

  final mailController = TextEditingController();
  final passwordController = TextEditingController();

  Future<void> verifyAccount(email, password) async{
    FirebaseFirestore.instance
        .collection('users')
        .where('email', isEqualTo: email)
        .where('password', isEqualTo: password)
        .get()
        .then(
            (QuerySnapshot querySnapshot){
              querySnapshot.docs.forEach(
                      (doc){}
              );
              final List<DocumentSnapshot> documents = querySnapshot.docs;
              if(documents.isNotEmpty){
                Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => Home(),
                )
                );
              }
              else{
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Your entered Email or Password is wrong!'),
                  ),
                );
              }
            }
    );
  }

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0, end: val,),
        duration: Duration(seconds: 1),
        builder: (_, value, child) => Transform(
          transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001)
              ..rotateY(value),
              child: child,
          alignment: Alignment.bottomCenter,
        ),
        child: switchScreen?

        Container(
          height: MediaQuery.of(context).size.height * 0.87,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.blueAccent,
                  Colors.white,
                  Colors.white,
          ]
        ),
        borderRadius: BorderRadius.circular(55.0),

      ),
          child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 100,
            width: 200,
            child: Center(
              child: Text('Sign In',style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          NormalTextField(prefixIcon: accountIcon, labelText: 'Email', hintText: 'Please enter your emails!',controller: mailController,),
          SizedBox(
            height: 30,
          ),
          PasswordText(labelText: 'Password', hintText: 'Please enter password',controller: passwordController,),
          SizedBox(
            height: 50,
          ),
          SizedBox(
            width: 200,
          child: ElevatedButton(
              onPressed: (){
                verifyAccount(mailController.text, passwordController.text);
              },
              child: Text('Sign In',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
              ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.indigoAccent),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(
                    color: Colors.indigo,
                  ),
                ),
              ),
            ),
          ),
    ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Don\'t sign up yet?',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
              ),
              TextButton(
                onPressed: (){
                  setState(() {
                    val = pi;
                    timer = Timer(Duration(milliseconds: 500),(){});
                    setState(() {
                      switchScreen = false;
                    });
                  });
                },
                child: Text(
                  'Sign Up!',
                  style: TextStyle(
                    color: Colors.indigo
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      ),
      ) : Register(),
    );
  }
}
