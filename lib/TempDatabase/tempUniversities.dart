class TempUniversities{

  String name, image;

  TempUniversities({
    required this.name,
    required this.image,
  });
}

List<TempUniversities> uni_categories =[
  TempUniversities(
      image: "assets/images/bilkent_logo.png",
      name: "Bilkent University"
  ),
  TempUniversities(
      image: "assets/images/boun_logo.png",
      name: "Boğaziçi University"
  ),
  TempUniversities(
    image: "assets/images/selcuk_uni_logo.png",
    name: "METU",
  ),
  TempUniversities(
      image: "assets/images/metu_logo.png",
      name: "Selçuk University",
  ),
  TempUniversities(
    image: "assets/images/itu_logo.png",
    name: "İstanbul Technic University"
  )
];