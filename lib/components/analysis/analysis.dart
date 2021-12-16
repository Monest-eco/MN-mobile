import 'package:flutter/material.dart';

Scaffold analysis(BuildContext context) {
  return const Scaffold(
    body: Center(
      child: CustomPaint( // this will add custom painter after child
        child: SizedBox(
          width: 200,
          height: 200,
          child: Center(child: Text("20%"),)
        )
      )
    )
  );
}