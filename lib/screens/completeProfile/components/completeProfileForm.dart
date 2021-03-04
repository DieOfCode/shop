import 'package:flutter/material.dart';
import 'package:money_shop/components/customSuffixIcon.dart';
import 'package:money_shop/components/defaultButton.dart';
import 'package:money_shop/components/formError.dart';
import 'package:money_shop/screens/otp/otp_screen.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class CompleteProfileForm extends StatefulWidget {
  @override
  _CompleteProfileFormState createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String firstName;
  String lastName;
  String phoneNumber;
  String address;

  void addError({String error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({String error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildFirstNameForm(),
          SizedBox(
            height: SizeConfig.screenHeight * 0.04,
          ),
          buildLastNameForm(),
          SizedBox(
            height: SizeConfig.screenHeight * 0.04,
          ),
          buildPhoneNumberForm(),
          SizedBox(
            height: SizeConfig.screenHeight * 0.04,
          ),
          buildAddressForm(),
          FormError(errors: errors),
          SizedBox(
            height: SizeConfig.screenHeight * 0.06,
          ),
          DefaultButton(
              text: 'Continue',
              onPress: () {
                if (_formKey.currentState.validate()) {
                  Navigator.pushNamed(context, OtpScreen.routeName);
                }
              })
        ],
      ),
    );
  }

  TextFormField buildAddressForm() {
    return TextFormField(
      onSaved: (newValue) => address = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kAddressNullError);
          return null;
        }
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kAddressNullError);
        }
        return null;
      },
      decoration: InputDecoration(
          labelText: "Address",
          hintText: 'Enter your address',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixIcon(icon: Icons.location_city)),
    );
  }

  TextFormField buildPhoneNumberForm() {
    return TextFormField(
      onSaved: (newValue) => phoneNumber = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPhoneNumberNullError);
          return null;
        }
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kPhoneNumberNullError);
        }
        return null;
      },
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
          labelText: "Phone number",
          hintText: 'Enter your phone number',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixIcon(icon: Icons.phone)),
    );
  }

  TextFormField buildLastNameForm() {
    return TextFormField(
      onSaved: (newValue) => lastName = newValue,
      decoration: InputDecoration(
          labelText: "Last name",
          hintText: 'Enter your last name',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixIcon(icon: Icons.person_outline)),
    );
  }

  TextFormField buildFirstNameForm() {
    return TextFormField(
      onSaved: (newValue) => firstName = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNameNullError);
          return null;
        }
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kNameNullError);
        }
        return null;
      },
      decoration: InputDecoration(
          labelText: "First name",
          hintText: 'Enter your first name',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixIcon(icon: Icons.person_outline)),
    );
  }
}
