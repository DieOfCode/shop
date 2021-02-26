import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:money_shop/widget/bottomBar/bottomBar.dart';

//TODO:update size
void main() => runApp(ShopApp());

class ShopApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ShopMainPage(),
    );
  }
}

class ShopMainPage extends StatefulWidget {
  @override
  _ShopMainPageState createState() => _ShopMainPageState();
}

class _ShopMainPageState extends State<ShopMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
      ),
    );
  }
}

class PopularProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: 'Popular Products',
          press: null,
        ),
        SizedBox(
          height: 15,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PopularProductCard(),
              PopularProductCard(),
              PopularProductCard(),
              SizedBox(width: 18)
            ],
          ),
        )
      ],
    );
  }
}

class PopularProductCard extends StatelessWidget {
  const PopularProductCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: SizedBox(
        width: 140,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1.02,
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(15)),
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Some',
              style: TextStyle(color: Colors.black),
              maxLines: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '24 \$',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange),
                ),
                Container(
                  width: 28,
                  height: 28,
                  decoration: BoxDecoration(
                      color: Colors.grey[200], shape: BoxShape.circle),
                  child: Icon(Icons.favorite),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class SpecialOffer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: 'Special for you',
          press: null,
        ),
        SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                text: null,
                press: () {},
              ),
              SpecialOfferCard(
                text: null,
                press: () {},
              ),
              SpecialOfferCard(
                text: null,
                press: () {},
              ),
              SizedBox(width: 18)
            ],
          ),
        )
      ],
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  final String text;
  final GestureTapCallback press;

  const SpecialOfferCard({@required this.text, @required this.press});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: EdgeInsets.only(left: 20),
        child: SizedBox(
          width: 242,
          height: 100,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.orange),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Text.rich(TextSpan(
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                    children: [TextSpan(text: text)])),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String text;
  final GestureTapCallback press;

  const SectionTitle({@required this.text, @required this.press});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
          GestureDetector(
              onTap: press,
              child: Text('see more',
                  style: TextStyle(fontSize: 12, color: Colors.black)))
        ],
      ),
    );
  }
}

class Categories extends StatelessWidget {
  const Categories({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {'icon': CupertinoIcons.money_dollar, 'text': 'some'},
      {'icon': CupertinoIcons.shopping_cart, 'text': 'some'},
      {'icon': CupertinoIcons.question, 'text': 'some'},
      {'icon': CupertinoIcons.sun_dust, 'text': 'some'},
      {'icon': CupertinoIcons.moon, 'text': 'some'}
    ];
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
              categories.length,
              (index) => CategoryCard(
                  icon: categories[index]['icon'],
                  text: categories[index]['text'],
                  press: null))
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final IconData icon;
  final String text;
  final Function press;

  const CategoryCard({this.icon, this.text, this.press});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: 55,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFFFECDF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  this.icon,
                  size: 40,
                  color: Colors.orange,
                ),
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              this.text,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      width: double.infinity,
      height: 90,
      decoration: BoxDecoration(
          color: Colors.deepPurple, borderRadius: BorderRadius.circular(20)),
      child: Text.rich(
        TextSpan(
          text: 'SALE\n',
          style: TextStyle(color: Colors.white),
          children: [
            TextSpan(
                text: 'Something interesting', style: TextStyle(fontSize: 24))
          ],
        ),
      ),
    );
  }
}

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
      child: Row(
        children: [
          SearchField(),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: IconButtonWithNotification(),
          )
        ],
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.75,
      decoration: BoxDecoration(
          color: Colors.black45, borderRadius: BorderRadius.circular(15)),
      child: TextField(
        onChanged: (value) => null, //TODO:search value
        decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintText: 'Поиск',
            prefixIcon: Icon(Icons.search),
            contentPadding: EdgeInsets.symmetric(vertical: 9, horizontal: 20)),
      ),
    );
  }
}

class IconButtonWithNotification extends StatelessWidget {
  const IconButtonWithNotification({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(50),
      onTap: () => null,
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Container(
            height: 46,
            width: 46,
            decoration: BoxDecoration(
                color: Colors.black45,
                // borderRadius: BorderRadius.circular(15),
                shape: BoxShape.circle),
            child: Icon(Icons.notifications),
          ),
          Positioned(
            top: -3,
            right: 0,
            child: Container(
              height: 16,
              width: 16,
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
                border: Border.all(width: 1.5, color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar();

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
