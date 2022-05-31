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
      title:"Math 102 Books",
      description: "Clear and fair price.",
      owner: "Kemal",
      image: "assets/images/bilkent_logo.png",
      price: 160,
      category: "Books",
      university: "Bilkent"
  ),
  TempProduct(
      id: 2,
      title:"Math 102 Books",
      description: "Clear and fair price.",
      owner: "Kemal",
      image: "assets/images/bilkent_logo.png",
      price: 160,
      category: "Books",
      university: "Bilkent"
  ),
  TempProduct(
      id: 3,
      title:"Math 102 Books",
      description: "Clear and fair price.",
      owner: "Kemal",
      image: "assets/images/bilkent_logo.png",
      price: 160,
      category: "Books",
      university: "Bilkent"
  ),
  TempProduct(
      id: 4,
      title:"Math 102 Books",
      description: "Clear and fair price.",
      owner: "Kemal",
      image: "assets/images/bilkent_logo.png",
      price: 160,
      category: "Books",
      university: "Bilkent"
  ),
  TempProduct(
      id: 5,
      title:"Math 102 Books",
      description: "Clear and fair price.",
      owner: "Kemal",
      image: "assets/images/bilkent_logo.png",
      price: 160,
      category: "Books",
      university: "Bilkent"
  )
];