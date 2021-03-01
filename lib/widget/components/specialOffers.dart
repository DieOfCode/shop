import 'package:flutter/material.dart';
import 'package:money_shop/widget/components/sectionTitle.dart';

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
