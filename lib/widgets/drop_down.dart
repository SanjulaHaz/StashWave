import 'package:flutter/material.dart';

class DropDown extends StatelessWidget {

  final String dropdownValue;

  const DropDown({super.key, required this.dropdownValue});

  @override
  Widget build(BuildContext context) {
    return InputDecorator(
      decoration: InputDecoration(
          isDense: true,
          contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(3),
            borderSide: BorderSide(color: Colors.white),
          )
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          isDense: true,
          isExpanded: true,
          hint: Text(
            dropdownValue,
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Inter",
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
          icon: const Icon(
            Icons.arrow_drop_down,
            color: Color(0xffD9D9D9),
          ),
          onChanged: (String? newValue) {},
          items: <String>['One', 'Two', 'Free', 'Four']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}
