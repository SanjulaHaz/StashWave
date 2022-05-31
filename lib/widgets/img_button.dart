import 'package:flutter/material.dart';

class ImgButton extends StatelessWidget {

  final IconData? leadingIcon;
  final String? leadingImage;
  final String text;

  const ImgButton({super.key, this.leadingIcon, this.leadingImage, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Theme.of(context).primaryColor,
            padding: EdgeInsets.symmetric(vertical: 18, horizontal: 30),
        ),
        onPressed: (){},
        child: Row(
          children: [
            leadingIcon!=null?Icon(leadingIcon):Image.asset(leadingImage!),
            SizedBox(
              width: 15,
            ),
            Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Inter",
                fontWeight: FontWeight.w700,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
