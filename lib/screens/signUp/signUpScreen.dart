import 'package:flutter/material.dart';
import 'package:money_shop/screens/signUp/components/body.dart';

import '../../size_config.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = '/sign_up';
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign up"),
      ),
      body: SignUpBody(),
    );
  }
}
