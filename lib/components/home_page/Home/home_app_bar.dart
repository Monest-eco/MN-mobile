import 'package:flutter/material.dart';

AppBar homeAppBar(BuildContext context) {
  const name = "Clément Bolin";
  const image = "assets/images/perso.png";
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    leading: const Padding(
      padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
      child: CircleAvatar(
        radius: 20,
        backgroundImage: AssetImage(image),
      ),
    ),
    title: const Text(
      name,
      style: TextStyle(
        fontSize: 20,
        color: Colors.black,
      ),
    ),
  );
}