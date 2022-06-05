import 'package:flutter/material.dart';

class NormalTextField extends StatelessWidget {
  Icon prefixIcon;
  String labelText;
  String hintText;

  TextEditingController controller;

  NormalTextField({
    required this.prefixIcon,
    required this.labelText,
    required this.hintText,
    required this.controller,
});
  //NormalTextField(InputDecoration decoration);
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
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 0,vertical: 0),
          prefixIcon: prefixIcon,
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
