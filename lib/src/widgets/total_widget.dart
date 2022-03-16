import 'package:flutter/material.dart';
import 'package:payment_app_ui/src/constants/constants.dart';

Widget total(String total){
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Your Wallet', style: TextStyle(color: colorTextoBlanco)),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('\$ $total', style: TextStyle(color: colorTextoBlanco, fontSize: 20, fontWeight: FontWeight.bold),),
            SizedBox(width: 10,),
            SizedBox(
              height: 20,
              width: 65,
              child: RaisedButton(
                shape: StadiumBorder(),
                padding: EdgeInsets.symmetric(horizontal: 5),
                color: colorSecundario,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Icon(Icons.keyboard_arrow_up, color: Colors.white, size: 20,),
                    Text('15%', style: TextStyle(color: colorTextoBlanco),)
                  ],
                ),
                onPressed: () => {},
              ),
            )
          ],
        )
      ],
    ),
  );
}