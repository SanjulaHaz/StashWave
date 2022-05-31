import 'package:btc_app/widgets/body_button.dart';
import 'package:btc_app/widgets/footer.dart';
import 'package:btc_app/widgets/input_field.dart';
import 'package:flutter/material.dart';

class FindBeneficiary extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  color: Color(0xff030D2E),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: double.infinity,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                            child: Icon(Icons.close,color: Color(0xffD9D9D9)),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        InputField(text: "Search by usertag, name, email"),
                        SizedBox(
                          height: 30,
                        ),
                        ListView.builder(
                          shrinkWrap: true,
                            padding: EdgeInsets.zero,
                            itemCount: 4,
                            itemBuilder: (context,i){
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: ListTile(
                                  contentPadding: EdgeInsets.zero,
                                  leading: CircleAvatar(
                                      radius: 23,
                                      backgroundImage: AssetImage("assets/profile_img.png")
                                  ),
                                  title: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "John Doe",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: "Inter",
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "@johndoe",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: "Inter",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        BodyButton(
                            text: "Can’t find contact? Send an invite",
                            onPressed: (){}
                        ),
                      ],
                    ),
                  ),
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
