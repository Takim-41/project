import 'package:flutter/material.dart';

class TempProduct{

  String title, description, owner, image, category, university;
  int price, id;

  TempProduct({
    required this.id,
    required this.title,
    required this.description,
    required this.owner,
    required this.image,
    required this.price,
    required this.category,
    required this.university
  });
}

List<TempProduct> product =[
  TempProduct(
      id: 1,
      title:"Basys3",
      description: "Clear and fair price.",
      owner: "Kemal",
      image: "assets/images/bilkent_logo.png",
      price: 200,
      category: "Electronics",
      university: "METU"
  ),
  TempProduct(
      id: 2,
      title:"Physc 102 Books",
      description: "Clear and fair price.",
      owner: "Kemal",
      image: "assets/images/bilkent_logo.png",
      price: 120,
      category: "Books",
      university: "Bilkent University"
  ),
  TempProduct(
      id: 3,
      title:"Temp 102 Notes",
      description: "Clear and fair price.",
      owner: "Kemal",
      image: "assets/images/bilkent_logo.png",
      price: 500,
      category: "Notes",
      university: "METU"
  ),
  TempProduct(
      id: 4,
      title:"Chem 102 Notes",
      description: "Clear and fair price.",
      owner: "Kemal",
      image: "assets/images/bilkent_logo.png",
      price: 50,
      category: "Notes",
      university: "Bilkent University"
  ),
  TempProduct(
      id: 5,
      title:"MBG 102 Books",
      description: "Clear and fair price.",
      owner: "Kemal",
      image: "assets/images/bilkent_logo.png",
      price: 170,
      category: "Books",
      university: "ITU"
  )
];