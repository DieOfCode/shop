import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:money_shop/components/noAccount.dart';
import 'package:money_shop/components/defaultButton.dart';
import 'package:money_shop/constants.dart';
import 'package:money_shop/screens/forgotPassword/forgotPassword.dart';
import 'package:money_shop/screens/signIn/components/signInForm.dart';
import 'package:money_shop/components/socialCard.dart';
import 'package:money_shop/size_config.dart';

import '../../../components/customSuffixIcon.dart';
import '../../../components/formError.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig().getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: SizeConfig.screenHeight * 0.04,
                ),
                Text(
                  'Welcome Back',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: SizeConfig().getProportionateScreenWidth(28),
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Sign in with your email and password \nor continue with social media',
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.08,
                ),
                SignForm(),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.08,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(icon: Icons.face, onPress: () {}),
                    SocialCard(icon: Icons.android, onPress: () {}),
                    SocialCard(icon: Icons.celebration, onPress: () {})
                  ],
                ),
                SizedBox(
                  height: SizeConfig().getProportionateScreenHeight(20),
                ),
                NoAccountText(),
                SizedBox(height: SizeConfig().getProportionateScreenHeight(12))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
