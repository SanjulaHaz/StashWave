import 'package:flutter/material.dart';

class IntroBody extends StatelessWidget {

  final String image;
  final String title;
  final String subtitle;
  final double subtitlePadding;
  final double emptyContainer;

  const IntroBody({super.key, required this.image, required this.title, required this.subtitle, required this.subtitlePadding, required this.emptyContainer});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: double.infinity,
          height: emptyContainer,
        ),
        Image.asset(image),
        SizedBox(
          height: 65,
        ),
        Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Inter",
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: subtitlePadding),
          child: Text(
            subtitle,
            style: TextStyle(
              color: Color(0xff9F9F9F),
              fontFamily: "Inter",
              fontWeight: FontWeight.w500,
              fontSize: 12,
              height: 1.3,
            ),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
