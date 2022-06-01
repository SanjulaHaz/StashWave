import 'package:btc_app/approve_account.dart';
import 'package:btc_app/widgets/footer.dart';
import 'package:btc_app/widgets/header.dart';
import 'package:btc_app/widgets/img_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WithdrawalOptions extends StatelessWidget {

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
                  "Withdrawal accounts",
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
              leadingImage: "assets/phone.png",
              text: "Mobile money",
              onPressed: (){
                Navigator.push(
                  context,
                  CupertinoPageRoute(builder: (context) => ApproveAccount()),
                );
              },
            ),
            SizedBox(
              height: 8,
            ),
            ImgButton(
              leadingImage: "assets/bank.png",
              text: "Bank",
              onPressed: (){},
            ),
            Expanded(
              child: SizedBox(),
            ),
            Footer(currentPage: "Withdraw",),
          ],
        ),
      ),
    );
  }
}
