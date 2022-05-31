import 'package:btc_app/widgets/body_button.dart';
import 'package:btc_app/widgets/drop_down.dart';
import 'package:btc_app/widgets/footer.dart';
import 'package:btc_app/widgets/header.dart';
import 'package:btc_app/widgets/input_field.dart';
import 'package:flutter/material.dart';

class RequestCircle extends StatelessWidget {

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
                          "Request from circle",
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
                        DropDown(dropdownValue: "Currency"),
                        SizedBox(
                          height: 20,
                        ),
                        InputField(text: "Amount"),
                        SizedBox(
                          height: 20,
                        ),
                        InputField(text: "Enter recipient tag"),
                        SizedBox(
                          height: 20,
                        ),
                        Theme(
                          data: ThemeData(
                            unselectedWidgetColor: Colors.white,
                          ),
                          child: CheckboxListTile(
                            checkColor: Colors.black,
                            activeColor: Colors.white,
                            controlAffinity: ListTileControlAffinity.leading,
                            contentPadding: EdgeInsets.zero,
                            dense: true,
                            value: false,
                            title: Transform.translate(
                              offset: const Offset(-15, 0),
                              child: Text(
                                "Add to circles",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Inter",
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            onChanged: (context){},
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: BodyButton(
                      text: "Continue",
                      onPressed: (){}
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
