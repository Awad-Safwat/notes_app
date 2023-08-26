import 'package:flutter/material.dart';
import 'package:notes_app/constatns.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    required this.lableText,
    required this.maxLines,
    super.key,
    required this.onChange,
  });

  final int maxLines;
  final String lableText;
  final void Function(String?)? onChange;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChange,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        } else {
          return null;
        }
      },
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
