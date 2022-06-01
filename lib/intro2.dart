import 'package:btc_app/widgets/intro_body.dart';
import 'package:flutter/material.dart';

class Intro2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Theme.of(context).backgroundColor,
          body: IntroBody(
            image: "assets/intro2.png",
            title: "Send money",
            subtitle: "Send money to friends and family and settle business cross-border payments.",
            subtitlePadding: 75,
            emptyContainer: 200,
          ),
        ),
    );
  }
}
