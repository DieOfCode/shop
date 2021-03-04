import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:money_shop/size_config.dart';

class CustomAppBar extends PreferredSize {
  final double rating;

  CustomAppBar({@required this.rating});
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.symmetric(
          horizontal: SizeConfig().getProportionateScreenWidth(20)),
      child: Row(
        children: [
          SizedBox(
            height: SizeConfig().getProportionateScreenHeight(40),
            width: SizeConfig().getProportionateScreenWidth(40),
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60),
                  ),
                ),
                padding: MaterialStateProperty.all(EdgeInsets.zero),
              ),
              onPressed: () => Navigator.pop(context),
              child: Icon(
                Icons.arrow_back_ios,
              ),
            ),
          ),
          Spacer(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(14)),
            child: Row(
              children: [
                Text(
                  '$rating',
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Icon(Icons.star)
              ],
            ),
          )
        ],
      ),
    ));
  }
}
