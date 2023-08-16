import 'package:flutter/material.dart';

import '../constatns.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(
            kPrimaryColor,
          ),
        ),
        onPressed: () {},
        child: const Center(
            child: Text(
          'Add',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        )));
  }
}
