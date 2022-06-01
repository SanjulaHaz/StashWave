import 'package:flutter/material.dart';

class HeaderButton extends StatelessWidget {

  final String text;
  final Function onPressed;

  const HeaderButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: const Color(0xff40E0E0)
      ),
      onPressed: ()=> onPressed(),
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
