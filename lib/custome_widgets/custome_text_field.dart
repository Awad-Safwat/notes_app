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
      maxLines: maxLines,
      decoration: InputDecoration(
        label: Center(
          child: Text(
            lableText,
            style: const TextStyle(
              color: kPrimaryColor,
            ),
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
