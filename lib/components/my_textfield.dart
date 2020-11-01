import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    Key key,
    this.hintText,
    this.onChanged,
    this.maxLines,
  }) : super(key: key);

  final String hintText;
  final Function(String) onChanged;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    var height = size.height;
    var width = size.width;
    return TextField(
      maxLines: maxLines,
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
