import 'package:flutter/material.dart';

Widget appBar(){
  final appBar = Container(
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: const Icon(Icons.keyboard_backspace, color: Colors.white ,),
          onPressed: () => { }, 
        ),
        IconButton(
          icon: Image.asset('assets/menu.png', height: 20,),
          onPressed: () => { }, 
        )
      ]
    ),
  );

  return SafeArea(child: appBar);
}