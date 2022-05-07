// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'screens/home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          // This is the theme of your application.
          backgroundColor: Colors.white,
          primarySwatch: Colors.red,
        ),
        home: MyHomePage());
  }
}
