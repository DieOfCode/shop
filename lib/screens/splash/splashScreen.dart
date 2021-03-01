import 'package:flutter/material.dart';
import 'package:money_shop/size_config.dart';

import 'components/body.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    // TODO: implement build
    return Scaffold(
      body: Body(),
    );
  }
}
