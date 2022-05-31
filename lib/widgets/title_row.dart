import 'package:flutter/material.dart';

class TitleRow extends StatelessWidget {

  final String lText;
  final IconData icon;
  final String rText;

  const TitleRow({super.key, required this.lText, required this.icon, required this.rText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          lText,
          style: TextStyle(
            color: Color(0xff40E0E0),
            fontFamily: "Inter",
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ),
        ),
        Row(
          children: [
            Icon(icon, color: Colors.white, size: 18),
            SizedBox(
              width: 5,
            ),
            Text(
              rText,
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Inter",
                fontWeight: FontWeight.w700,
                fontSize: 12,
              ),
            ),
          ],
        )
      ],
    );
  }
}
