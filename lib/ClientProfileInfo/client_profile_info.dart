// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: library_private_types_in_public_api

import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:ogrenciden/ClientProfileInfo/text_bar.dart';
import 'package:ogrenciden/Widgets/OgrencidenAppBar.dart';
import 'package:ogrenciden/core/enums.dart';

class ClientProfileInfo extends StatefulWidget {
  static String routeName = "/ClientProfileInfo";
  final String? eposta;
  const ClientProfileInfo({
    Key? key,
    this.eposta,
  }) : super(key: key);

  @override
  _ClientProfileInfoState createState() => _ClientProfileInfoState();
}

class _ClientProfileInfoState extends State<ClientProfileInfo> {
  String? urlIndirme;
  File? dosya;
  String urlBaslangic =
      "https://www.seekpng.com/png/detail/1010-10108361_person-icon-circle.png";

  mesaj(BuildContext context, String deger) {
    var alert = AlertDialog(
      title: const Text("Uyarı"),
      content: Text(deger),
    );

    showDialog(context: context, builder: (BuildContext context) => alert);
  }

  Widget image() {
    return Image.asset(
      "assets/images/turuncu-beyaz_1.png",
      width: 250.0,
      height: 150.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
          const CusBottomNavigationBar(selectedMenu: MenuState.home),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Container(
              decoration: const BoxDecoration(),
              child: CircleAvatar(
                radius: 60.0,
                backgroundImage: NetworkImage(urlBaslangic),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Center(
                child: Text(
              "john Doe",
              style: GoogleFonts.poppins(
                  color: const Color(0xFF212121),
                  fontWeight: FontWeight.w600,
                  fontSize: 17),
            )),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 15),
            child: text_bar(
              title: "Phone Number",
              text: "05555555555",
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 15),
            child: text_bar(
              title: "Email",
              text: "test@test.com",
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 15),
            child: text_bar(
              title: "Birthday",
              text: "01/01/2000",
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 15),
            child: text_bar(
              title: "Address",
              text: "test",
            ),
          ),
        ],
      ),
    );
  }
}
