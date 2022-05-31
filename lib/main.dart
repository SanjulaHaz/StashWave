import 'package:btc_app/receive_money.dart';
import 'package:btc_app/request_circle.dart';
import 'package:btc_app/request_money.dart';
import 'package:btc_app/send_circle.dart';
import 'package:btc_app/send_form.dart';
import 'package:btc_app/send_money.dart';
import 'package:btc_app/withdrawal_form.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        backgroundColor: const Color(0xff02071A),
        primaryColor: const Color(0xff151A29),
      ),
      home: SendCircle(),
    );
  }
}
