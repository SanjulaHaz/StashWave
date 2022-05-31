import 'package:flutter/material.dart';

class BodyButton extends StatelessWidget {

  final String text;
  final Function onPressed;

  const BodyButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: const Color(0xff40E0E0),
        padding: EdgeInsets.symmetric(vertical: 14, horizontal: 30)
      ),
      onPressed: ()=> onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: Color(0xff02071A),
          fontFamily: "Inter",
          fontWeight: FontWeight.w700,
          fontSize: 14,
        ),
      ),
    );
  }
}
