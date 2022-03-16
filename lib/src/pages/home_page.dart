import 'package:flutter/material.dart';
import 'package:payment_app_ui/src/constants/constants.dart';
import 'package:payment_app_ui/src/widgets/appbar_widget.dart';
import 'package:payment_app_ui/src/widgets/card_condition_widget.dart';
import 'package:payment_app_ui/src/widgets/total_widget.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _fondo(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              appBar(),
              total('1,750.50'),
              cardCondition()
            ],
          )
        ],
      )
    );
  }

  Widget _fondo() {
    final boxTop = Container(
      height: 220,
      width: double.infinity,
      color: colorPrimario,
    );

    final circulo1 = Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(80),
        color: colorCirculo.withOpacity(0.3)
      ),
    );

    final circulo2 = Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(80),
        color: colorCirculo.withOpacity(0.3)
      ),
    );

    return Stack(
      children: [
        boxTop,
        Positioned(
          left: -50,
          top: -65,
          child: circulo1
        ),
        Positioned(
          right: -25,
          top: -48,
          child: circulo2,
        )
      ],
    );
  }
}