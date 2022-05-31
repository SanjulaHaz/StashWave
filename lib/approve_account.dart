import 'package:btc_app/widgets/footer.dart';
import 'package:btc_app/widgets/header.dart';
import 'package:btc_app/widgets/img_button.dart';
import 'package:flutter/material.dart';

class ApproveAccount extends StatelessWidget {

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
                    "Verify account",
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Theme.of(context).primaryColor,
                      padding: EdgeInsets.symmetric(vertical: 18, horizontal: 30),
                  ),
                  onPressed: (){},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Identity verification",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      ),
                      Icon(Icons.arrow_forward),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).primaryColor,
                    padding: EdgeInsets.symmetric(vertical: 18, horizontal: 30),
                  ),
                  onPressed: (){},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Email verification",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      ),
                      Icon(Icons.arrow_forward),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).primaryColor,
                    padding: EdgeInsets.symmetric(vertical: 18, horizontal: 30),
                  ),
                  onPressed: (){},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Address verification",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      ),
                      Icon(Icons.arrow_forward),
                    ],
                  ),
                ),
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
