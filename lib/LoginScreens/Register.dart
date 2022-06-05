import 'dart:async';
import 'dart:math';
import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ogrenciden/LoginScreens/home.dart';
import 'package:ogrenciden/LoginScreens/password-text.dart';
import 'package:ogrenciden/LoginScreens/text-field2.dart';
import 'package:ogrenciden/LoginScreens/login.dart';
import 'package:ogrenciden/LoginScreens/users.dart';

class Register extends StatefulWidget {

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var school = <String>[];
  String selected_school = "Okulunuz";
  Icon accountIcon = Icon(
    Icons.account_circle,
    color: Colors.indigoAccent,
  );
  double val = 0;
  bool switchScreen = true;
  Timer registertimer = Timer(Duration(seconds: 1),(){});

  final mailController = TextEditingController();
  final passwordController = TextEditingController();
  final confimpasswordController = TextEditingController();

  Future createUser() async{
    final docUser = FirebaseFirestore.instance.collection('users').doc();
    final user = users(email: mailController.text, password: passwordController.text,);

    final json = user.toJson();

    if(mailController.text.isNotEmpty && passwordController.text.isNotEmpty && confimpasswordController.text.isNotEmpty && passwordController.text == confimpasswordController.text){
      await docUser.set(json);

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Text('Kayıt Oldunuz!'),
        )
      );
      Navigator.push(context,
          MaterialPageRoute(
            builder: (context) => Home(),
          )
      );
    }
    else{
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Birşeyler Ters Gitti'),
          ),
      );

    }

  }


  @override
  void initState() {
    super.initState();
    school.add("Okulunuz");
    school.add("Akdeniz Üniversitesi");
    school.add("Boğaziçi Üniversitesi");
    school.add("Ege Üniversitesi");
    school.add("İstanbul Üniversitesi");
    school.add("Selçuk Üniversitesi");
  }

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(
        begin: 0, end:  val),
      duration: Duration(seconds: 1),
      builder: (_, value,  child) => Transform(
        transform: Matrix4.identity()
            ..setEntry(3, 2, 0.001)
            ..rotateY(value),
        child: child,
        alignment: Alignment.bottomCenter,
      ),
      child: switchScreen?

      Transform(
      transform: Matrix4.identity()
      ..setEntry(3, 2, 0.001)
      ..rotateY(pi),
      child: Container(
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
            ],
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
      child: Text(
        'Kayıt Ol',
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
        ),
      ),
    ),
    ),
    SizedBox(
      height: 20,
    ),

        Padding(
          padding: EdgeInsets.all(10.0),
          child: DropdownButton<String>(
            style: TextStyle(
              color: Colors.indigoAccent,
            ),
            value: selected_school,
            items:school.map<DropdownMenuItem<String>>((String value){
              return DropdownMenuItem<String>(
                value: value,
                child: Text(" $value", style: TextStyle(color:Colors.indigo, fontSize: 17),),
              );
            }).toList(),
            icon: Icon(Icons.arrow_drop_down,),
            iconSize: 26,
            underline: Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 1.8,color: Colors.indigo),
                ),
              ),
            ),
            isExpanded: true,
            onChanged: (String? selected_data){
              setState(() {
                selected_school= selected_data!;
              });
            },
          ),
        ),

    SizedBox(
      height: 10,
    ),
        NormalTextField(
            prefixIcon: accountIcon,
            labelText: 'Email',
            hintText: 'Lütfen Email adresinizi giriniz!',
          controller: mailController,
        ),
    SizedBox(
      height: 30,
    ),
    PasswordText(labelText: 'Sifre', hintText: 'Lütfen Şifrenizi Giriniz',controller: passwordController,),
    SizedBox(
      height: 30,
    ),
    PasswordText(labelText: 'Tekrar Sifre', hintText: 'Lütfen Şifrenizi Tekrar Giriniz', controller: confimpasswordController,),
    SizedBox(
      height: 60,
    ),
    SizedBox(
      width: 200,
      child: ElevatedButton(
        onPressed: (){
          createUser();
        },
        child: Text('Kayıt Ol',
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
      height: 20,
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Zaten Bir Hesabın Var Mı?',
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
        TextButton(
          onPressed: (){
            setState(() {
              val = pi;
              registertimer = Timer(Duration(milliseconds: 500),(){});
              setState(() {
                switchScreen = false;
              });
            });
          },
          child: Text(
            'Giriş Yap!',
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
      ),

      alignment: Alignment.bottomCenter,
      ) : Loginp(),
    );

  }
}
