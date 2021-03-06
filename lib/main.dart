import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:money_shop/routes.dart';
import 'package:money_shop/screens/home/homeScreen.dart';
import 'package:money_shop/screens/signUp/signUpScreen.dart';
import 'package:money_shop/screens/splash/splashScreen.dart';
import 'package:money_shop/size_config.dart';
import 'package:money_shop/theme.dart';
import 'package:money_shop/widget/bottomBar/bottomBar.dart';

import 'constants.dart';

//TODO:update size
void main() => runApp(ShopApp());

class ShopApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      initialRoute: SignUpScreen.routeName,
      routes: routes,
    );
  }
}
