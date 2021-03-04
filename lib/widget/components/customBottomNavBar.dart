import 'package:flutter/material.dart';
import 'package:money_shop/constants.dart';
import 'package:money_shop/screens/home/homeScreen.dart';

import 'menuState.dart';

class CustomBottomNavBar extends StatelessWidget {
  final MenuState selectedMenu;
  const CustomBottomNavBar({
    Key key,
    @required this.selectedMenu,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
          color: Colors.grey[300],
          boxShadow: [
            BoxShadow(
                offset: Offset(0, -15),
                blurRadius: 20,
                color: Color(0xFFDADADA).withOpacity(0.15)),
          ],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40))),
      child: SafeArea(
        top: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            customIconButton(
                icon: Icons.home,
                onPress: () =>
                    Navigator.pushNamed(context, HomeScreen.routeName),
                menu: MenuState.home),
            customIconButton(
                icon: Icons.list, onPress: () {}, menu: MenuState.catalog),
            customIconButton(
                icon: Icons.shopping_cart,
                onPress: () {},
                menu: MenuState.basket),
            customIconButton(
                icon: Icons.favorite, onPress: () {}, menu: MenuState.favorite),
            customIconButton(
                icon: Icons.person, onPress: () {}, menu: MenuState.profile),
          ],
        ),
      ),
    );
  }

  IconButton customIconButton(
      {@required IconData icon, @required Function onPress, MenuState menu}) {
    final Color inActiveIconColor = Color(0xFFB6B6B6);
    return IconButton(
      iconSize: 30,
      icon: Icon(
        icon,
        color: menu == selectedMenu ? kPrimaryColor : inActiveIconColor,
      ),
      onPressed: onPress,
    );
  }
}
