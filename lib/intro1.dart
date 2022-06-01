import 'package:btc_app/widgets/intro_body.dart';
import 'package:flutter/material.dart';

class Intro1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Theme.of(context).backgroundColor,
          body: IntroBody(
            image: "assets/intro1.png",
            title: "Pay and settle invoices",
            subtitle: "Buy and pay for invoices online in shops that support bitcoin payments",
            subtitlePadding: 85,
            emptyContainer: 183,
          ),
        ),
    );
  }
}
