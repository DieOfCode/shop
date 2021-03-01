import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String text;
  final GestureTapCallback press;

  const SectionTitle({@required this.text, @required this.press});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
          GestureDetector(
              onTap: press,
              child: Text('see more',
                  style: TextStyle(fontSize: 12, color: Colors.black)))
        ],
      ),
    );
  }
}
