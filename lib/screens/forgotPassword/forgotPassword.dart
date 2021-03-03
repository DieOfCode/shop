import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:money_shop/screens/forgotPassword/components/body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static String routeName = "/forgot_password";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forgot password"),
      ),
      body: ForgotScreenBody(),
    );
  }
}
