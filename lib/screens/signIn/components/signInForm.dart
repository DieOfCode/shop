import 'package:flutter/material.dart';
import 'package:money_shop/components/defaultButton.dart';
import 'package:money_shop/components/formError.dart';
import 'package:money_shop/screens/forgotPassword/forgotPassword.dart';
import 'package:money_shop/screens/loginSuccess/loginSuccessScreen.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import '../../../components/customSuffixIcon.dart';

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  bool remember = false;
  final List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailTextFormField(),
          SizedBox(height: SizeConfig().getProportionateScreenHeight(30)),
          buildPasswordFormField(),
          SizedBox(height: SizeConfig().getProportionateScreenHeight(30)),
          Row(
            children: [
              Checkbox(
                  value: remember,
                  activeColor: kPrimaryColor,
                  onChanged: (value) {
                    setState(() {
                      remember = value;
                    });
                  }),
              Text("Remember me"),
              Spacer(),
              GestureDetector(
                onTap: () => Navigator.pushNamed(
                    context, ForgotPasswordScreen.routeName),
                child: Text("Forgot Password",
                    style: TextStyle(decoration: TextDecoration.underline)),
              )
            ],
          ),
          FormError(errors: errors),
          SizedBox(height: SizeConfig().getProportionateScreenHeight(20)),
          DefaultButton(
              text: 'Continue',
              onPress: () {
                if (_formKey.currentState.validate()) {
                  print(errors);
                  _formKey.currentState.save();
                  Navigator.pushNamed(context, LoginSuccessScreen.routeName);
                }
              })
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPassNullError)) {
          setState(() {
            errors.remove(kPassNullError);
          });
          return "";
        } else if (value.length >= 8 && errors.contains(kShortPassError)) {
          setState(() {
            errors.remove(kShortPassError);
          });
          return "";
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kPassNullError)) {
          setState(() {
            errors.add(kPassNullError);
          });
          return "";
        } else if (value.length < 8 && !errors.contains(kShortPassError)) {
          setState(() {
            errors.add(kShortPassError);
          });
          return "";
        }
        return null;
      },
      obscureText: true,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          labelText: "Password",
          hintText: 'Enter your Password',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixIcon(icon: Icons.lock)),
    );
  }

  TextFormField buildEmailTextFormField() {
    return TextFormField(
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kEmailNullError)) {
          setState(() {
            errors.remove(kEmailNullError);
          });
          return "";
        } else if (emailValidatorRegExp.hasMatch(value) &&
            errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.remove(kInvalidEmailError);
          });
          return "";
        }
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kEmailNullError)) {
          setState(() {
            errors.add(kEmailNullError);
          });
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.add(kInvalidEmailError);
          });
        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          labelText: "Email",
          hintText: 'Enter your email',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixIcon(icon: Icons.email)),
    );
  }
}
