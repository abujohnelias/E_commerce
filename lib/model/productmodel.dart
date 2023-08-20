import 'package:flutter/material.dart';

class Products {
  final String productName;
  final String productPrice;
  final int productId;
  final String productImageURL;

  Products(this.productId,
      {required this.productName,
      required this.productPrice,
      required this.productImageURL});
}