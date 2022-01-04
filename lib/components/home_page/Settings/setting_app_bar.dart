import 'package:flutter/material.dart';

AppBar settingsAppBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    title: const Text(
      "Paramètres",
      style: TextStyle(
        fontSize: 20,
        color: Colors.black,
      ),
    ),
  );
}