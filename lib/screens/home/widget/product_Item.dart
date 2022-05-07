// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../models/product.dart';

class Productitem extends StatelessWidget {
  final Product product;
  const Productitem(this.product, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.bottomLeft,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(product.productImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              // Image.asset(product.productImage),
              //  Text(product.productTitle),
              //  Text(product.productPrice.toString()),

              Text(product.productTitle, style: producttext()),
              Text(product.productPrice.toString(), style: producttext()),
            ],
          ),
        ),
      ),
    );
  }

  TextStyle producttext() {
    return TextStyle(
        background: Paint()
          ..color = Color.fromARGB(255, 255, 255, 255)
          ..style = PaintingStyle.fill,
        fontSize: 16,
        fontWeight: FontWeight.bold);
  }
}
