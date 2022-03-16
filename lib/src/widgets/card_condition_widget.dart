import 'package:flutter/material.dart';
import 'package:circular_chart_flutter/circular_chart_flutter.dart';

import 'package:payment_app_ui/src/constants/constants.dart';

GlobalKey<AnimatedCircularChartState> _chartKey = new GlobalKey<AnimatedCircularChartState>();

Widget cardCondition(){
  final card = Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: Card(
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
      color: Colors.white,
      child: Container(
        padding: EdgeInsets.only(top: 10, left: 10, right: 10),
        child: Column(
          children: [
            Container(
              child: Row(
                children: [
                  circularChart(),
                  SizedBox(width: 5,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Good Financial', 
                        style: TextStyle(
                          color: colorTextoTitulo, 
                          fontWeight: FontWeight.bold, 
                          fontSize: 16)
                      ),
                      Text('Your financial condition is god', style: TextStyle(color: colorTextoSecundario))
                      
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );

  return card;
}

Widget circularChart() {
  return Stack(
    alignment: Alignment.center,
    children: [
      Container(
        width: 35,
        height: 35,
        decoration: BoxDecoration(
          color: colorPrimario,
          borderRadius: BorderRadius.circular(25)
        ),
      ),
      AnimatedCircularChart(
        holeRadius: 18,
        key: _chartKey,
        size: Size(55, 55), 
        initialChartData: <CircularStackEntry>[
          CircularStackEntry(
            <CircularSegmentEntry>[
              CircularSegmentEntry(80, colorPrimario, rankKey: 'Completado'),
              CircularSegmentEntry(20, colorCirculo.withOpacity(0.7), rankKey: 'Resto')
            ],
            rankKey: 'Progreso'
          )
        ],
        chartType: CircularChartType.Radial,
        )
    ],
  );
}

