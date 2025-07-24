import 'package:flutter/material.dart';

import '../Screens/screens.dart';

class Product {
  final String image;
  final String name;
  final String description;
  final double price;
  final double rating;
  final int discount;

  Product({
    required this.image,
    required this.name,
    required this.description,
    required this.price,
    required this.rating,
    required this.discount,
  });
}

