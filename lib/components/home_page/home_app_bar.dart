import 'package:flutter/material.dart';

AppBar homeAppBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    leading: const Padding(
      padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
      child: CircleAvatar(
        radius: 20,
        backgroundImage: AssetImage("assets/images/perso.png"),
      ),
    ),
    title: const Text(
      "Clément Bolin",
      style: TextStyle(
        fontSize: 20,
        color: Colors.black,
      ),
    ),
  );
}