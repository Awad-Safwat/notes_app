import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    required this.lableText,
    required this.maxLines,
    required this.minLines,
    super.key,
  });

  final int minLines, maxLines;

  final String lableText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      minLines: minLines,
      maxLines: maxLines,
      decoration: InputDecoration(
        label: Center(
          child: Text(
            lableText,
            style: const TextStyle(
              color: Color(0xFF54EBD6),
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
