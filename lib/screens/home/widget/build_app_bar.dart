import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: Theme.of(context).backgroundColor,
    leading: IconButton(
      onPressed: () {},
      icon: const Icon(Icons.menu, color: Colors.black, size: 24),
    ),
    // ignore: prefer_const_literals_to_create_immutables
    actions: [
      Container(
        margin: const EdgeInsets.only(right: 16),
        child: const CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage('assets/images/user.jpeg'),
        ),
      ),
    ],
  );
}
