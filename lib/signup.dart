import 'package:btc_app/otp.dart';
import 'package:btc_app/widgets/input_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Theme.of(context).backgroundColor,
          body: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Sign Up",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w700,
                    fontSize: 32,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                InputField(text: "Username"),
                SizedBox(
                  height: 22,
                ),
                InputField(text: "Email"),
                SizedBox(
                  height: 22,
                ),
                InputField(text: "Your name"),
                SizedBox(
                  height: 22,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xff40E0E0), 
                      padding: EdgeInsets.all(19),
                  ),
                  onPressed: (){
                    Navigator.push(
                      context,
                      CupertinoPageRoute(builder: (context) => OTP()),
                    );
                  },
                  child: SizedBox(
                    width: double.infinity,
                    child: Text(
                      "Get started",
                      style: TextStyle(
                        color: Color(0xff02071A),
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: 22,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xff40E0E0),
                      padding: EdgeInsets.all(19),
                  ),
                  onPressed: ()=> (){},
                  child: SizedBox(
                    width: double.infinity,
                    child: Text(
                      "Signup with Twitter",
                      style: TextStyle(
                        color: Color(0xff02071A),
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
