class TempCategories{

  String title, image;

  TempCategories({
    required this.title,
    required this.image,
  });
}

List<TempCategories> categories =[
  TempCategories(
      image: "assets/images/books.png",
      title:"Books"
  ),
  TempCategories(
      image: "assets/images/electronics.png",
      title: "electronics"
  ),
  TempCategories(
      image: "assets/images/notes.png",
      title: "notes"
  )
];