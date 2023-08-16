import 'package:flutter/material.dart';
import 'package:notes_app/constatns.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    required this.lableText,
    required this.maxLines,
    super.key,
  });

  final int maxLines;

  final String lableText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      textAlign: TextAlign.center,
      maxLines: maxLines,
      decoration: InputDecoration(
          hintText: lableText,
          hintStyle: const TextStyle(
            color: kPrimaryColor,
          ),
          border: BuildCustomBorder(Colors.white),
          enabledBorder: BuildCustomBorder(Colors.white),
          focusedBorder: BuildCustomBorder(kPrimaryColor)),
    );
  }

  OutlineInputBorder BuildCustomBorder(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: color,
      ),
    );
  }
}
