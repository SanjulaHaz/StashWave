import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

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
                height: 105,
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
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: PinCodeTextField(
                  appContext: context,
                  length: 4,
                  onChanged: (value){},
                  enableActiveFill: true,
                  showCursor: false,
                  obscureText: true,
                  textStyle: TextStyle(
                    color: Color(0xff40E0E0),
                    height: 1,
                    fontSize: 35,
                  ),
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.circle,
                    inactiveFillColor: Theme.of(context).primaryColor,
                    inactiveColor: Theme.of(context).primaryColor,
                    selectedFillColor: Theme.of(context).primaryColor,
                    selectedColor: Color(0xff40E0E0),
                    activeColor: Theme.of(context).primaryColor,
                    activeFillColor: Theme.of(context).primaryColor,
                    fieldHeight: 50,
                    fieldWidth: 50,
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }
}
