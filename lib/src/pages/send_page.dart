import 'package:flutter/material.dart';
import 'package:payment_app_ui/src/constants/constants.dart';
import 'package:payment_app_ui/src/widgets/card_send_widget.dart';
import 'package:payment_app_ui/src/widgets/circulos_widget.dart';

class SendPage extends StatelessWidget {
  const SendPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _fondo(),
          CardSend()
        ],
      )
    );
  }

  Widget _fondo() {
    final fondo = Container(
      color: colorPrimario,
      width: double.infinity,
      height: double.infinity,
    );

    return Stack(
      children: [
        fondo,
        Positioned(
          left: -50,
          top: -65,
          child: circulo1()
        ),
        Positioned(
          right: -25,
          top: -48,
          child: circulo2(),
        )
      ],
    );
  }
}