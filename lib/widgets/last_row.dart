import 'package:flutter/material.dart';

import 'body_button.dart';

class LastRow extends StatelessWidget {

  final String text;

  const LastRow({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical:0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Inter",
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
          BodyButton(text: "Continue", onPressed: (){})
        ],
      ),
    );
  }
}
