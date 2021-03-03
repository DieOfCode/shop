import 'package:flutter/material.dart';
import 'package:money_shop/components/defaultButton.dart';
import 'package:money_shop/constants.dart';
import 'package:money_shop/size_config.dart';

class LoginSuccessBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: SizeConfig.screenHeight * 0.04,
          ),
          Icon(
            Icons.check_circle_outline_outlined,
            size: SizeConfig.screenHeight * 0.4,
            color: kPrimaryColor,
          ),
          SizedBox(
            height: SizeConfig.screenHeight * 0.04,
          ),
          Text(
            "Login Success",
            style: TextStyle(
                fontSize: SizeConfig().getProportionateScreenWidth(30),
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          Spacer(),
          SizedBox(
              width: SizeConfig.screenWidth * 0.6,
              child: DefaultButton(text: "Let`s Shop", onPress: () {})),
          Spacer()
        ],
      ),
    );
  }
}
