import 'package:flutter/material.dart';

class TransactionTile extends StatelessWidget {

  final ImageProvider profilePhoto;
  final String name;
  final String date;
  final String amount;
  final bool isCompleted;

  const TransactionTile({super.key, required this.profilePhoto, required this.name, required this.date, required this.amount, required this.isCompleted});


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Theme.of(context).primaryColor,
      ),
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 17),
        leading: CircleAvatar(
            radius: 23,
            backgroundImage: profilePhoto,
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Inter",
                fontWeight: FontWeight.w700,
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              date,
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Inter",
                fontWeight: FontWeight.w700,
                fontSize: 12,
              ),
            ),
          ],
        ),
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              amount,
              style: TextStyle(
                color: isCompleted?Color(0xff09C53E):Color(0xffD42020),
                fontFamily: "Inter",
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              isCompleted?"COMPLETE":"FAILED",
              style: TextStyle(
                color: isCompleted?Color(0xff09C53E):Color(0xffD42020),
                fontFamily: "Inter",
                fontWeight: FontWeight.w700,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
