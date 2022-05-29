import 'package:btc_app/widgets/header.dart';
import 'package:btc_app/widgets/title_row.dart';
import 'package:btc_app/widgets/transaction_tile.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Header(),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: TitleRow(lText: "Received", icon: Icons.add, rText: "Request Pay"),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: ListView.builder(
                    itemCount: 8,
                    itemBuilder: (context,i){
                      return Transaction(
                          profilePhoto: AssetImage("assets/profile_img.png"),
                          name: "Jack D",
                          date: "12 JUN 2022 12:00",
                          amount: "B 0.0021",
                          isCompleted: true,
                  );
                }
                ),
              ),
            ),
            Container(
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
            ),
          ],
        ),
      ),
    );
  }
}
