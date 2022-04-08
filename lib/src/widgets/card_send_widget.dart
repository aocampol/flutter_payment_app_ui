import 'package:flutter/material.dart';
import 'package:payment_app_ui/src/constants/constants.dart';
import 'package:payment_app_ui/src/widgets/card_cuenta_origen.dart';
import 'package:payment_app_ui/src/widgets/circulos_widget.dart';
import 'package:payment_app_ui/src/widgets/icon_send_widget.dart';

class CardSend extends StatelessWidget {
  const CardSend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100, bottom: 30, left: 20, right: 20),
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        elevation: 8,
        child: Stack(
          children: [
            _fondoCard(),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(top: 60, left: 10, right: 10),
              child: Column(
                children: [
                  iconSend(),
                  const SizedBox(height: 20),
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'Send successfully to ', 
                          style: TextStyle(
                            color: colorTextoSecundario, 
                            fontSize: 12
                          )
                        ),
                        TextSpan(
                          text: 'Lela Crawford',
                          style: TextStyle(
                            color: colorTextoTitulo, 
                            fontWeight: FontWeight.bold, 
                            fontSize: 12
                          )
                        )
                      ]
                    )
                  ),
                  const SizedBox(height: 20,),
                  const Text(
                    '\$100.00', 
                    style: TextStyle(
                      color: colorPrimario,
                      fontSize: 26,
                      fontWeight: FontWeight.bold
                    )
                  ),
                  const SizedBox(height: 15,),
                  cuentaOrigen(),
                  const SizedBox(height: 10),
                  const Divider(),
                  const SizedBox(height: 10),
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'Transaction done on ', 
                          style: TextStyle(color: colorTextoSecundario, fontSize: 12)
                        ),
                        TextSpan(
                          text: '12 January 2021.',
                          style: TextStyle(color: colorTextoTitulo, fontWeight: FontWeight.w600, fontSize: 12)
                        )
                      ]
                    )
                  ),
                  const SizedBox(height: 5,),
                  const Text('Your reference number is 03492390', style: TextStyle(color: colorTextoSecundario, fontSize: 12)),
                  const SizedBox(height: 30),
                  SizedBox(
                    height: 40,
                    child: TextButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(80),
                          )
                        ),
                        padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(0)),
                      ),                      
                      child: Ink(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            transform: GradientRotation(-80),
                            colors: [
                              colorSecundario,
                              colorPrimario
                            ],
                            begin: FractionalOffset(0.18, 0.9),
                            end: FractionalOffset(0.4, -0.2)
                          ),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Container(
                          constraints: const BoxConstraints(
                            maxWidth: 300,
                            minWidth: 50
                          ),
                          alignment: Alignment.center,
                          child: const Text('Continue', style: TextStyle(color: colorTextoBlanco, fontSize: 16, fontWeight: FontWeight.bold),),
                        ),
                      )
                    ),
                  )
                ]
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _fondoCard() {
    return Stack(
      children: [
        Positioned(
          left: -80,
          top: -80,
          child: circulo1()
        ),
        Positioned(
          right: -90,
          bottom: -90,
          child: circulo1()
        )
      ],
    );
  }
}