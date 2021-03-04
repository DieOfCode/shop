import 'package:flutter/material.dart';
import 'package:money_shop/components/customSuffixIcon.dart';
import 'package:money_shop/components/defaultButton.dart';
import 'package:money_shop/components/formError.dart';
import 'package:money_shop/components/socialCard.dart';
import 'package:money_shop/screens/signUp/components/signUpForm.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SignUpBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig().getProportionateScreenWidth(20),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Register Account",
                style: headingStyle,
              ),
              Text(
                "Complete your details or continue \nwith social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.07),
              SignUpForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.04),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(icon: Icons.face, onPress: () {}),
                  SocialCard(icon: Icons.android, onPress: () {}),
                  SocialCard(icon: Icons.celebration, onPress: () {})
                ],
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.04),
              Text(
                "By continuing your confirm that you agree \nwith our Term and Condition",
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
