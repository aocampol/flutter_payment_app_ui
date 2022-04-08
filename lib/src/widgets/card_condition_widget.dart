import 'package:flutter/material.dart';
import 'package:circular_chart_flutter/circular_chart_flutter.dart';

import 'package:payment_app_ui/src/constants/constants.dart';

GlobalKey<AnimatedCircularChartState> _chartKey = GlobalKey<AnimatedCircularChartState>();

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
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
        child: Column(
          children: <Widget>[
            Row(
              children: [
                circularChart(),
                const SizedBox(width: 5),
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
            const SizedBox(height: 12,),
            const Divider(height: 0.5,),
            TextButton(
              onPressed: () { }, 
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('View Statistic', style: TextStyle(color: colorPrimario, fontWeight: FontWeight.w400),),
                  Icon(Icons.keyboard_arrow_right, color: colorPrimario,)
                ]
              )
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
        size: const Size(55, 55), 
        initialChartData: <CircularStackEntry>[
          CircularStackEntry(
            <CircularSegmentEntry>[
              const CircularSegmentEntry(80, colorPrimario, rankKey: 'Completado'),
              CircularSegmentEntry(20, colorCirculo.withOpacity(0.7), rankKey: 'Resto')
            ],
            rankKey: 'Progreso'
          )
        ],
        chartType: CircularChartType.Radial,
        percentageValues: true,
        holeLabel: '80',
        labelStyle: const TextStyle(
          color: colorTextoBlanco,
          fontWeight: FontWeight.w500,
          fontSize: 18
        ),
      )
    ],
  );
}

