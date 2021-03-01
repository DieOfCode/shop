import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
