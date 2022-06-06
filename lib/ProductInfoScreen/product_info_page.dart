// ignore_for_file: unnecessary_new, avoid_unnecessary_containers, prefer_const_constructors

import 'package:badges/badges.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ogrenciden/TempDatabase/tempProducts.dart';

import 'package:ogrenciden/screens/client_profile_info.dart';

import '../Widgets/OgrencidenAppBar.dart';
import '../core/enums.dart';

String imagePath = "assets/images/";


// final List<String> imgList = [
//   'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
//   'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
//   'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
//   'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
//   'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
//   'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
// ];
class ProductInfoPage extends StatefulWidget {
  const ProductInfoPage({Key? key, this.product}) : super(key: key);
  static String routeName = "/ProductInfoScreen";
  final TempProduct? product;

  @override
  State<ProductInfoPage> createState() => _ProductInfoPageState();
}

class _ProductInfoPageState extends State<ProductInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar:
            CusBottomNavigationBar(selectedMenu: MenuState.home),
        body: Padding(
          padding: const EdgeInsets.only(top: 60),
          child: Column(
            children: [
              Container(
                child: CarouselSlider(
                  options: CarouselOptions(
                    //autoPlay: true,
                    aspectRatio: 2.0,
                    enlargeCenterPage: true,
                  ),
                  items: imageSliders(widget.product!.imageList),
                ),
              ),
              Text(
                widget.product!.title,
                style: const TextStyle(fontSize: 32.0, color: Colors.grey),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(children: [
                  Row(
                    children: const [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Description",
                          style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      widget.product!.description,
                      style: TextStyle(fontSize: 17.0, color: Colors.grey),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: ElevatedButton(
                        style: ButtonStyle(
                          minimumSize:
                              MaterialStateProperty.all<Size>(Size(343, 64)),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xFFFEE440)),
                        ),
                        onPressed: () => Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new ClientProfileInfo(owner: widget.product!.owner))),
                        child: Text("Contact Info",
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF212121)))),
                  ),
                ]),
              ),
            ],
          ),
        ));
  }

  List<Widget> imageSliders(List<String> imgList) {
    final List<Widget> images = imgList
      .map((item) => Container(
    child: Container(
      margin: EdgeInsets.all(5.0),
      child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          child: Stack(
            children: <Widget>[
              Image.asset(item, fit: BoxFit.cover, width: 1000.0),
              Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(200, 0, 0, 0),
                        Color.fromARGB(0, 0, 0, 0)
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                ),
              ),
            ],
          )),
    ),
  ))
      .toList();
    return images;
}

}
