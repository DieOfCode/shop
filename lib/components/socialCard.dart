import 'package:flutter/cupertino.dart';

import '../size_config.dart';

class SocialCard extends StatelessWidget {
  final IconData icon;
  final Function onPress;

  const SocialCard({
    this.icon,
    this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: SizeConfig().getProportionateScreenWidth(10),
        ),
        padding: EdgeInsets.all(SizeConfig().getProportionateScreenHeight(12)),
        height: SizeConfig().getProportionateScreenHeight(40),
        width: SizeConfig().getProportionateScreenWidth(40),
        decoration:
            BoxDecoration(color: Color(0xFFF5F6F9), shape: BoxShape.circle),
        child: Icon(icon),
      ),
    );
  }
}
