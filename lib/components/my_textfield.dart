import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    Key key,
    this.hintText,
    this.onChanged,
  }) : super(key: key);

  final String hintText;
  final Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left: size.width * 0.04),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}
