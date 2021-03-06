import 'package:flutter/material.dart';
import 'package:money_shop/size_config.dart';

const kPrimaryColor = Color(0xFFFF7643);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFFFA53E), Color(0xFFFF7643)]);

const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);
const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: Colors.black,
    height: 1.5);

// Form error

final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailValidError = "Please Enter your Email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kEmailNullError = "Please Enter your email";
const String kShortPassError = "Password is to short";
const String kMatchPassError = "Password don`t match";
const String kNameNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone";
const String kAddressNullError = "Please Enter your address";

final otpInputDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(
      vertical: SizeConfig().getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius:
        BorderRadius.circular(SizeConfig().getProportionateScreenWidth(15)),
    borderSide: BorderSide(color: kTextColor),
  );
}
