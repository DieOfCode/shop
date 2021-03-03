import 'package:flutter/material.dart';

import '../size_config.dart';

class CustomSuffixIcon extends StatelessWidget {
  final IconData icon;
  const CustomSuffixIcon({
    @required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
          0,
          SizeConfig().getProportionateScreenWidth(20),
          SizeConfig().getProportionateScreenWidth(20),
          SizeConfig().getProportionateScreenWidth(20)),
      child: Icon(
        icon,
        color: Colors.grey,
        size: 30,
      ),
    );
  }
}
