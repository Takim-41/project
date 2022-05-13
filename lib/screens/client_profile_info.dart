import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';

class ClientProfileInfo extends StatefulWidget {
  final String? eposta;
  ClientProfileInfo({Key? key, this.eposta}) : super(key: key);

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
      appBar: AppBar(
        title: const Text('Profile Info'),
        backgroundColor: Colors.green,
        leading: BackButton(
          color: Colors.black,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      backgroundColor: const Color(0xff1C2031),
      body: ListView(
        children: [
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              decoration: const BoxDecoration(),
              child: CircleAvatar(
                radius: 60.0,
                backgroundImage: NetworkImage(urlBaslangic),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Container(
              child: const Center(
                  child: Text(
                "Name Surname",
                style: TextStyle(
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              )),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  children: const [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Information",
                        style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Email: ",
                        style: TextStyle(fontSize: 17.0, color: Colors.grey),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text("user@gmail.com",
                        style: TextStyle(fontSize: 17.0, color: Colors.grey)),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Phone Number: ",
                        style: TextStyle(fontSize: 17.0, color: Colors.grey),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text("05434374349",
                        style: TextStyle(fontSize: 17.0, color: Colors.grey)),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "School: ",
                        style: TextStyle(fontSize: 17.0, color: Colors.grey),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text("X University",
                        style: TextStyle(fontSize: 17.0, color: Colors.grey)),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Shared Books: ",
                    style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}
