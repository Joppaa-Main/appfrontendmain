// ignore_for_file: library_prefixes, unused_import

import 'package:appfrontendmain/models/product.dart';
import 'package:appfrontendmain/screens/home/widget/product_Item.dart'
    as productItem;
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:appfrontendmain/screens/home/widget/product_item.dart';

class ProductGrid extends StatefulWidget {
  const ProductGrid({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ProductGrid();
}

class _ProductGrid extends State<ProductGrid> {
  final productList = Product.generateProducts();
  // Generate a list of dummy items

  @override
  Widget build(BuildContext context) {
    return joppaaEGrid();
  }

  SizedBox joppaaEGrid() {
    return SizedBox(
      height: 600,
      width: 150,
      child: GridView.count(
        mainAxisSpacing: 0.1,
        crossAxisCount: 3,
        crossAxisSpacing: 1,
        children:
            productList.map((productItem) => Productitem(productItem)).toList(),
      ),
    );
  }

  SizedBox joppaaMGrid() {
    return SizedBox(
      height: 900,
      width: 150,
      child: MasonryGridView.count(
        crossAxisCount: 1,
        itemCount: productList.length,
        mainAxisSpacing: 4,
        shrinkWrap: false,
        crossAxisSpacing: 4,
        itemBuilder: (context, index) => Productitem(productList[index]),
      ),
    );
  }
}
