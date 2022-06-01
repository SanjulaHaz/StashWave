import 'package:flutter/material.dart';

class OTP extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Theme.of(context).backgroundColor,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: double.infinity,
                height: 80,
              ),
              Text(
                "Enter your passcode",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
              //todo: Add pin field
            ],
          ),
        ),
    );
  }
}
