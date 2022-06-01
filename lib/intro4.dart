import 'package:btc_app/widgets/intro_body.dart';
import 'package:flutter/material.dart';

class Intro4 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: IntroBody(
          image: "assets/intro4.png",
          title: "Secure and lightning fast",
          subtitle: "Leverage the power of Bitcoin lightning network for secure, affordable, and fast transcations.",
          subtitlePadding: 50,
          emptyContainer: 160,
        ),
      ),
    );
  }
}
