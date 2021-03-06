import 'package:flutter/material.dart';
import 'package:money_shop/screens/completeProfile/completeProfileScreen.dart';
import 'package:money_shop/screens/forgotPassword/forgotPassword.dart';
import 'package:money_shop/screens/home/homeScreen.dart';
import 'package:money_shop/screens/loginSuccess/components/body.dart';
import 'package:money_shop/screens/loginSuccess/loginSuccessScreen.dart';
import 'package:money_shop/screens/otp/otp_screen.dart';
import 'package:money_shop/screens/signIn/signInScreen.dart';
import 'package:money_shop/screens/signUp/signUpScreen.dart';
import 'package:money_shop/screens/splash/splashScreen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
};
