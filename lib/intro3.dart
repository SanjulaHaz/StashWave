import 'package:btc_app/widgets/intro_body.dart';
import 'package:flutter/material.dart';

class Intro3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: IntroBody(
          image: "assets/intro3.png",
          title: "Withdraw to fiat",
          subtitle: "Exchange BTC in real-time to your local currency and send to bank or mobile money",
          subtitlePadding: 65,
          emptyContainer: 173,
        ),
      ),
    );
  }
}
