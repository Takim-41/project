import 'package:ogrenciden/Widgets/text_bar.dart';

class OwnerProduct{

  String fullname, phoneNum, email, birthday, adress;

  OwnerProduct({
    required this.fullname,
    required this.phoneNum,
    required this.email,
    required this.birthday,
    required this.adress
  });
}

List<OwnerProduct> owners =[
  OwnerProduct(
    fullname: "Kemal Abasıyanık",
    phoneNum: "05353413434",
    email: "kemal@neü.edu.tr",
    birthday: "01/01/2001",
    adress: "Ankara"
  ),
  OwnerProduct(
      fullname: "Arda Pekardan",
      phoneNum: "05357474742",
      email: "arda.pekardan@ug.bilkent.edu.tr",
      birthday: "28/04/1997",
      adress: "Ankara"
  ),
  OwnerProduct(
      fullname: "Ezgi Çetinkaya",
      phoneNum: "05353413434",
      email: "ezgi.cetinkaya@ogr.deu.edu.tr",
      birthday: "01/01/1999",
      adress: "Ankara"
  ),
  OwnerProduct(
      fullname: "Yusuf Başpınar",
      phoneNum: "05353413434",
      email: "yusuf.baspınar@neü.edu.tr",
      birthday: "20/02/1998",
      adress: "Eskişehir"
  )
];