import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:money_shop/widget/components/categories.dart';
import 'package:money_shop/widget/components/customBottomNavBar.dart';
import 'package:money_shop/widget/components/discountBanner.dart';
import 'package:money_shop/widget/components/menuState.dart';
import 'package:money_shop/widget/components/popularProducts.dart';
import 'package:money_shop/widget/components/searchBar.dart';
import 'package:money_shop/widget/components/specialOffers.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeScreenBody(),
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.home,
      ),
    );
  }
}
