import 'package:flutter/material.dart';

class Footer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff030D2E),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "Receive",
              style: TextStyle(
                color: Color(0xffF5F0F0),
                fontFamily: "Inter",
                fontWeight: FontWeight.w700,
                fontSize: 12,
              ),
            ),
            Text(
              "Send Money",
              style: TextStyle(
                color: Color(0xffF5F0F0),
                fontFamily: "Inter",
                fontWeight: FontWeight.w700,
                fontSize: 12,
              ),
            ),
            Text(
              "Withdraw",
              style: TextStyle(
                color: Color(0xffF5F0F0),
                fontFamily: "Inter",
                fontWeight: FontWeight.w700,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
