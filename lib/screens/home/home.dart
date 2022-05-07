// ignore_for_file: prefer_const_constructors, unused_import

import 'package:appfrontendmain/screens/home/widget/product_Item.dart';
import 'package:appfrontendmain/screens/home/widget/product_staggered_gridview.dart';
import 'package:flutter/material.dart';

import 'widget/build_app_bar.dart';
import 'widget/categorylist.dart';
import 'widget/search_input.dart';
//import 'package:flutter_svg/flutter_svg.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(context),
        body: ListView(children: <Widget>[
          SearchBar(),
          titleText(),
          Categorylist(),
          // ProductStaggeredGridView(),
          ProductGrid(),
        ]));
  }

  Padding titleText() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      child: Text('Joppaa Local Products \n and Services !',
          style: TextStyle(fontSize: 30, fontFamily: 'Georgia', height: 1.3)),
    );
  }
}
