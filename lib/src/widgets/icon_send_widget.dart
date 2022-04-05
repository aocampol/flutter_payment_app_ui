import 'package:flutter/material.dart';
import 'package:payment_app_ui/src/constants/constants.dart';

Widget iconSend() {
  return Stack(
    children: [
      CircleAvatar(
        radius: 30,
        backgroundColor: colorSecundario.withOpacity(0.3),
        child: Image.asset('assets/send.png', color: colorSecundario, width: 25,),
      ),
      Positioned(
        right: 3,
        bottom: 4,
        child: CircleAvatar(
          radius: 8,
          backgroundColor: colorPrimario,
          child: Icon(Icons.check, size: 10,),
        ),
      ),
      Positioned(
        top: 10,
        right: 20,
        child: Container(
          height: 4,
          width: 4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            color: colorPrimario,
          ),
        ),
      ),
      Positioned(
        top: 38,
        left: 10,
        child: Container(
          height: 4,
          width: 4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            color: colorPrimario,
          ),
        ),
      ),
      Positioned(
        bottom: 12,
        right: 25,
        child: Container(
          height: 3,
          width: 3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            color: colorPrimario,
          ),
        ),
      )
    ],
  );
}