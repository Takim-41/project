import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ogrenciden/LoginScreens/loginScreen.dart';
import 'package:ogrenciden/core/enums.dart';
import 'package:ogrenciden/screens/FavScreen/favorites.dart';
import 'package:ogrenciden/screens/LandingScreen/landing.dart';

class CusBottomNavigationBar extends StatelessWidget {
  const CusBottomNavigationBar({Key? key, required this.selectedMenu})
      : super(key: key);

  final MenuState selectedMenu;
  static const Color kPrimaryColor = Color(0xFF212121);
  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFBDBDBD);
    return Container(
        padding: EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40)),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, -15),
                blurRadius: 20,
                color: Color(0xFFDADADA).withOpacity(0.15),
              )
            ]),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  icon: SvgPicture.asset("assets/icons/burger.svg",
                      color: MenuState.home == selectedMenu
                          ? kPrimaryColor
                          : inActiveIconColor),
                  onPressed: () =>
                      Navigator.pushNamed(context, LandingScreen.routeName)),
              /*IconButton(
                icon: SvgPicture.asset("assets/icons/chat.svg",
                    color: MenuState.message == selectedMenu
                        ? kPrimaryColor
                        : inActiveIconColor),
                onPressed: () {},
              ),*/
              IconButton(
                icon: SvgPicture.asset("assets/icons/heart.svg",
                    color: MenuState.favourite == selectedMenu
                        ? kPrimaryColor
                        : inActiveIconColor),
                onPressed: () =>
                    Navigator.pushNamed(context, FavScreen.routeName),
              ),
              IconButton(
                icon: SvgPicture.asset("assets/icons/user.svg",
                    color: MenuState.profile == selectedMenu
                        ? kPrimaryColor
                        : inActiveIconColor),
                onPressed: () => Navigator.pushNamed(context, login.routeName),
              ),
            ],
          ),
        ));
  }
}
