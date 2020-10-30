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
      cursorColor: Colors.indigo,
      style: TextStyle(color: Colors.white),
      onChanged: onChanged,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left: size.width * 0.04),
        filled: false,
        fillColor: Colors.white.withOpacity(0.8),

        // OutlineInputBorder(
        //   borderSide: BorderSide.none,
        //   borderRadius: BorderRadius.circular(10),
        // ),
        hintText: hintText,
        hintStyle: TextStyle(fontWeight: FontWeight.w900, color: Colors.grey),
      ),
    );
  }
}
