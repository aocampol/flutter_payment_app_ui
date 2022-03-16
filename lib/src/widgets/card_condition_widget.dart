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
          children: <Widget>[
            Container(
              child: Row(
                children: [
                  circularChart(),
                  SizedBox(width: 5),
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
            ),
            SizedBox(height: 12,),
            Divider(height: 0.5,),
            FlatButton(
              onPressed: () { }, 
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('View Statistic', style: TextStyle(color: colorPrimario, fontWeight: FontWeight.w400),),
                  Icon(Icons.keyboard_arrow_right, color: colorPrimario,)
                ],
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

