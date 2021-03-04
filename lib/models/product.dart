import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavorite, isPopular;

  Product(
      {@required this.id,
      @required this.title,
      @required this.description,
      @required this.images,
      @required this.colors,
      @required this.price,
      this.rating = 0.0,
      this.isFavorite = false,
      this.isPopular = false});
}
