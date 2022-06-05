import 'package:flutter/material.dart';
class PasswordText extends StatefulWidget {
  String labelText;
  String hintText;

  TextEditingController controller;

  PasswordText({
    required this.labelText,
    required this.hintText,
    required this.controller,
});

  @override
  _PasswordTextState createState() => _PasswordTextState(labelText, hintText,controller);
}

class _PasswordTextState extends State<PasswordText> {
  String labelText;
  String hintText;
  TextEditingController controller;

  _PasswordTextState(this.labelText, this.hintText, this.controller);


  bool showPassword = false;
  Icon visOn = Icon(
    Icons.visibility,
    color: Colors.indigoAccent,
  );
  Icon visOff = Icon(
    Icons.visibility_off,
    color: Colors.indigoAccent,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10.0,right: 10.0),
      child: TextField(
        controller: controller,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.indigo
        ),
        obscureText: showPassword,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 0,vertical: 0),
          prefixIcon: Icon(
            Icons.security,
            color: Colors.indigoAccent,
          ),
          suffixIcon: IconButton(
            icon: showPassword ? visOff : visOn,
            onPressed: (){
              setState(() {
                showPassword = !showPassword;
              });
            },

          ),
          labelText: labelText,
          labelStyle: TextStyle(color: Colors.indigo, fontSize: 15),
          alignLabelWithHint: true,
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.black38,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: Colors.indigoAccent,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: Colors.indigo,
            ),
          ),
        ),
      ),
    );
  }
}
