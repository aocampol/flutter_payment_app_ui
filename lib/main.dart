import 'package:flutter/material.dart';
import 'package:payment_app_ui/src/pages/home_page.dart';
import 'package:payment_app_ui/src/pages/send_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Payment App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/'     : (BuildContext context) => const HomePage(),
        'send'  : (BuildContext context) => const SendPage()
      },
    );
  }
}