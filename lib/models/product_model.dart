import 'dart:ui';
import 'package:flutter/material.dart';

class ProductModel {
  final Color image;
  final String productName;
  final int price;
  final String brand;
  final String introduce;

  ProductModel(
      this.image,
      this.productName,
      this.price,
      this.brand,
      this.introduce);


  // factory ProductModel.fromJson(Map<String, dynamic> json) {
  //   return ProductModel(
  //     image: json['tourName'],
  //     productName: json['comment'],
  //     price: json['evaluation'],
  //     brand: json['address'],
  //     introduce: json['image'],
  //   );
  // }

}
