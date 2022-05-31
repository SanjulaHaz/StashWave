import 'package:btc_app/widgets/body_button.dart';
import 'package:btc_app/widgets/drop_down.dart';
import 'package:btc_app/widgets/footer.dart';
import 'package:btc_app/widgets/header_button.dart';
import 'package:btc_app/widgets/header.dart';
import 'package:btc_app/widgets/last_row.dart';
import 'package:btc_app/widgets/input_field.dart';
import 'package:flutter/material.dart';

class WithdrawalForm extends StatelessWidget {

  final String dropdownValue = 'Account';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: Column(
          children: [
            Header(),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                width: double.infinity,
                color: Theme.of(context).primaryColor,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Withdraw",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      InputField(text: "Amount"),
                      SizedBox(
                        height: 20,
                      ),
                      DropDown(dropdownValue: "Account"),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            LastRow(text: "Manage accounts"),
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
