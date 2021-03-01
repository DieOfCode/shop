import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
      child: Row(
        children: [
          SearchField(),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: IconButtonWithNotification(),
          )
        ],
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.75,
      decoration: BoxDecoration(
          color: Colors.black45, borderRadius: BorderRadius.circular(15)),
      child: TextField(
        onChanged: (value) => null, //TODO:search value
        decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintText: 'Поиск',
            prefixIcon: Icon(Icons.search),
            contentPadding: EdgeInsets.symmetric(vertical: 9, horizontal: 20)),
      ),
    );
  }
}

class IconButtonWithNotification extends StatelessWidget {
  const IconButtonWithNotification({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(50),
      onTap: () => null,
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Container(
            height: 46,
            width: 46,
            decoration: BoxDecoration(
                color: Colors.black45,
                // borderRadius: BorderRadius.circular(15),
                shape: BoxShape.circle),
            child: Icon(Icons.notifications),
          ),
          Positioned(
            top: -3,
            right: 0,
            child: Container(
              height: 16,
              width: 16,
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
                border: Border.all(width: 1.5, color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
