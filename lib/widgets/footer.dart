import 'package:btc_app/receive_money.dart';
import 'package:btc_app/send_form.dart';
import 'package:btc_app/send_money.dart';
import 'package:btc_app/withdrawal_form.dart';
import 'package:btc_app/withdrawal_options.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {

  final String? currentPage;

  const Footer({super.key, this.currentPage});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff030D2E),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: (){
                if(currentPage!="Receive"){
                  Navigator.push(
                    context,
                    CupertinoPageRoute(builder: (context) => ReceiveMoney()),
                  );
                }
              },
              child: Text(
                "Receive",
                style: TextStyle(
                  color: Color(0xffF5F0F0),
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w700,
                  fontSize: 12,
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                if(currentPage!="Send Money"){
                  Navigator.push(
                    context,
                    CupertinoPageRoute(builder: (context) => SendMoney()),
                  );
                }
              },
              child: Text(
                "Send Money",
                style: TextStyle(
                  color: Color(0xffF5F0F0),
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w700,
                  fontSize: 12,
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                if(currentPage!="Withdraw"){
                  Navigator.push(
                    context,
                    CupertinoPageRoute(builder: (context) => WithdrawalOptions()),
                  );
                }
              },
              child: Text(
                "Withdraw",
                style: TextStyle(
                  color: Color(0xffF5F0F0),
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w700,
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
