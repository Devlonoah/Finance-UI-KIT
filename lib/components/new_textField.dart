import 'package:finance/constants.dart';
import 'package:flutter/material.dart';

class NewTextField extends StatelessWidget {
  const NewTextField({
    Key key,
    this.hint,
    this.maxLines,
    this.onChanged,
  }) : super(key: key);

  final String hint;
  final int maxLines;
  final Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    var height = size.height;
    var width = size.width;
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 10),
      width: width * 0.9,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        maxLines: maxLines,
        cursorColor: Colors.black,
        style: TextStyle(color: kBackgroundColor, fontWeight: FontWeight.w500),
        onChanged: onChanged,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: size.width * 0.04),
          filled: true,
          fillColor: Colors.white.withOpacity(0.0),
          border: OutlineInputBorder(borderSide: BorderSide.none),
          hintText: hint,
          hintStyle:
              TextStyle(fontWeight: FontWeight.w900, color: kBackgroundColor),
        ),
      ),
    );
  }
}
