import 'package:flutter/material.dart';

BottomNavigationBar shopBottomNavigationBar() {
  return BottomNavigationBar(
    unselectedItemColor: Colors.orange[100],
    items: allBottomBarItems.map((BottomBarItem bottomItem) {
      return BottomNavigationBarItem(
        icon: Icon(bottomItem.icon),
        label: bottomItem.label,
      );
    }).toList(),
    // currentIndex: _selectedIndex,
    selectedItemColor: Colors.amber[800],
    // onTap: _onItemTapped,
  );
}

class BottomBarItem {
  final int index;
  final String label;
  final IconData icon;

  BottomBarItem(this.index, this.label, this.icon);
}

List<BottomBarItem> allBottomBarItems = <BottomBarItem>[
  BottomBarItem(0, 'Главная', Icons.home),
  BottomBarItem(1, 'Каталог', Icons.search),
  BottomBarItem(2, 'Корзина', Icons.shopping_cart),
  BottomBarItem(3, 'Избранное', Icons.favorite),
  BottomBarItem(4, 'Профиль', Icons.person)
];
