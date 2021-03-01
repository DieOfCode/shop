import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final Function onPress;
  const DefaultButton({
    @required this.text,
    @required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: SizeConfig().getProportionateScreenHeight(56),
      child: FlatButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color: kPrimaryColor,
          onPressed: onPress,
          child: Text(
            text,
            style: TextStyle(
                fontSize: SizeConfig().getProportionateScreenWidth(18),
                color: Colors.white),
          )),
    );
  }
}
