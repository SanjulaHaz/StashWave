import 'package:btc_app/widgets/footer.dart';
import 'package:btc_app/widgets/header.dart';
import 'package:btc_app/widgets/title_row.dart';
import 'package:btc_app/widgets/transaction_tile.dart';
import 'package:flutter/material.dart';

class ReceiveMoney extends StatelessWidget {

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
              child: TitleRow(lText: "Received", icon: Icons.add, rText: "Request Pay"),
            ),
            SizedBox(
              height: 5,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: 4,
                    itemBuilder: (context,i){
                      return TransactionTile(
                        profilePhoto: AssetImage("assets/profile_img.png"),
                        name: "Jack D",
                        date: "12 JUN 2022 12:00",
                        amount: "B 0.0021",
                        color: Color(0xff09C53E),
                        status: "COMPLETE",
                      );
                    }
                ),
              ),
            ),
            Footer(),
          ],
        ),
      ),
    );
  }
}
