import 'package:flutter/material.dart';
import 'package:payment_app_ui/src/constants/constants.dart';

Widget circulo1() {
  final circulo1 = Container(
    height: 150,
    width: 150,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(80),
      color: colorCirculo.withOpacity(0.3)
    ),
  );

  return circulo1;
}

Widget circulo2() {
  final circulo2 = Container(
    height: 100,
    width: 100,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(80),
      color: colorCirculo.withOpacity(0.3)
    ),
  );

  return circulo2;
}