import 'package:flutter/material.dart';
import 'package:payment_app_ui/src/constants/constants.dart';
import 'package:payment_app_ui/src/pages/send_page.dart';

class CardsDetail extends StatelessWidget {
  const CardsDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text('Detail Information', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
          const SizedBox(height: 5,),
          cardsTable(context)
        ],
      ),
    );
  }

  Widget cardsTable(BuildContext context){
    return Table(
      children: [
        TableRow(
          children: [ 
            GestureDetector(
              child: _card(
                'assets/send.png', 
                colorSecundario, 
                'Send Money', 
                80.50),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const  SendPage()),
                  );
                },
            ),
            _card('assets/pagar1.png', colorPrimario, 'Pay Items', 150.15),
          ]
        ),
        TableRow(
          children: [ 
            _card('assets/cards.png', Colors.pinkAccent, 'Top Up', 60.32),
            _card('assets/compartir.png', Colors.deepPurpleAccent, 'Request Money', 90.20),
          ]
        )
      ],
    );
  }

  Widget _card(String icono, Color color, String titulo, double monto) {
    return Container(
      margin: const EdgeInsets.only(right: 5, left: 5, top: 10),
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0,10),
            blurRadius: 30,
            color: sombraColor
          )
        ],
        color: Colors.white
      ),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: color.withOpacity(0.2),
            child: Image.asset(icono, color: color, width: 20,),
          ),
          const SizedBox(height: 10,),
          Text(titulo, style: const TextStyle(color: colorTextoSecundario, fontSize: 11)),
          Text('\$$monto', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),)
        ]
      ),
    );
  }
}