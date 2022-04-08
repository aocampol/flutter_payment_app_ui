import 'package:flutter/material.dart';
import 'package:payment_app_ui/src/constants/constants.dart';

Widget cuentaOrigen(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const CircleAvatar(
        maxRadius: 20,
        backgroundImage: AssetImage('assets/user.jpg'),
      ),
      const SizedBox(width: 10,),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('John Crawford', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
          Text('John123@gmail.com', style: TextStyle(color: colorTextoSecundario, fontSize: 11),)
        ],
      )
    ],
  );
}