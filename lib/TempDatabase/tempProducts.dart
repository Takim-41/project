import 'package:flutter/material.dart';
import 'package:ogrenciden/TempDatabase/ownerProducts.dart';

class TempProduct{

  String title, description,  image, category, university;
  OwnerProduct owner;
  List<String> imageList;
  int price, id;

  TempProduct({
    required this.id,
    required this.title,
    required this.description,
    required this.owner,
    required this.image,
    required this.price,
    required this.category,
    required this.university,
    required this.imageList
  });
}

List<TempProduct> product =[
  TempProduct(
      id: 1,
      title:"Basys3",
      description: "Clear and fair price.",
      owner: owners[0],
      image: "assets/images/bilkent_logo.png",
      price: 200,
      category: "Electronics",
      university: "METU",
      imageList: ["assets/images/bilkent_logo.png","assets/images/books.png","assets/images/book2.jpg"]
  ),
  TempProduct(
      id: 2,
      title:"Physc 102 Books",
      description: "Clear and fair price.",
      owner: owners[1],
      image: "assets/images/books.png",
      price: 120,
      category: "Books",
      university: "Bilkent University",
      imageList: ["assets/images/bilkent_logo.png","assets/images/books.png","assets/images/book2.jpg"]
  ),
  TempProduct(
      id: 3,
      title:"Temp 102 Notes",
      description: "Clear and fair price.",
      owner: owners[2],
      image: "assets/images/bilkent_logo.png",
      price: 500,
      category: "Notes",
      university: "METU",
      imageList: ["assets/images/bilkent_logo.png","assets/images/books.png","assets/images/book2.jpg"]
  ),
  TempProduct(
      id: 4,
      title:"Chem 102 Notes",
      description: "Clear and fair price.",
      owner: owners[3],
      image: "assets/images/bilkent_logo.png",
      price: 50,
      category: "Notes",
      university: "Bilkent University",
      imageList: ["assets/images/bilkent_logo.png","assets/images/books.png","assets/images/book2.jpg"]
  ),
  TempProduct(
      id: 5,
      title:"MBG 102 Books",
      description: "Clear and fair price.",
      owner: owners[0],
      image: "assets/images/books.png",
      price: 170,
      category: "Books",
      university: "ITU",
      imageList: ["assets/images/bilkent_logo.png","assets/images/books.png","assets/images/book2.jpg"]
  )
];

