import 'package:flutter/cupertino.dart';
import 'package:money_shop/widget/components/categories.dart';
import 'package:money_shop/widget/components/discountBanner.dart';
import 'package:money_shop/widget/components/popularProducts.dart';
import 'package:money_shop/widget/components/searchBar.dart';
import 'package:money_shop/widget/components/specialOffers.dart';

class ShopMainPage extends StatefulWidget {
  @override
  _ShopMainPageState createState() => _ShopMainPageState();
}

class _ShopMainPageState extends State<ShopMainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            HomeHeader(),
            SizedBox(height: 20),
            DiscountBanner(),
            SizedBox(height: 20),
            Categories(),
            SizedBox(height: 20),
            SpecialOffer(),
            SizedBox(height: 20),
            PopularProducts()
          ],
        ),
      ),
    );
  }
}
