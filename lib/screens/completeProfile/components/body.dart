import 'package:flutter/material.dart';
import 'package:money_shop/components/customSuffixIcon.dart';
import 'package:money_shop/components/defaultButton.dart';
import 'package:money_shop/components/formError.dart';
import 'package:money_shop/constants.dart';

import '../../../size_config.dart';
import 'completeProfileForm.dart';

class CompleteProfileBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig().getProportionateScreenWidth(16)),
          child: Column(
            children: [
              Text(
                "Complete Profile",
                style: headingStyle,
              ),
              Text(
                "Complete  your details or continue \n with social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.04,
              ),
              CompleteProfileForm(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.04,
              ),
              Text(
                "By continuing your confirm that you agree \nwith our Term and Condition",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.caption,
              )
            ],
          ),
        ),
      ),
    );
  }
}
