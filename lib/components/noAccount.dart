import 'package:flutter/cupertino.dart';
import 'package:money_shop/screens/forgotPassword/forgotPassword.dart';

import '../constants.dart';
import '../size_config.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don`t have an account?  ",
          style:
              TextStyle(fontSize: SizeConfig().getProportionateScreenWidth(16)),
        ),
        GestureDetector(
          onTap: () => null,
          child: Text(
            "Sign up",
            style: TextStyle(
                fontSize: SizeConfig().getProportionateScreenWidth(16),
                color: kPrimaryColor),
          ),
        )
      ],
    );
  }
}
