import 'package:btc_app/widgets/footer.dart';
import 'package:btc_app/widgets/header.dart';
import 'package:btc_app/widgets/img_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SendCircle extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Theme.of(context).backgroundColor,
          body: Column(
            children: [
              Header(),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Send Money",
                    style: TextStyle(
                      color: Color(0xff40E0E0),
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ImgButton(
                leadingImage: "assets/user.png",
                text: "To Circle",
              ),
              SizedBox(
                height: 8,
              ),
              ImgButton(
                leadingIcon: CupertinoIcons.qrcode,
                text: "Scan QR code",
              ),
              Expanded(
                child: SizedBox(),
              ),
              Footer(),
            ],
          ),
        ),
    );
  }
}
