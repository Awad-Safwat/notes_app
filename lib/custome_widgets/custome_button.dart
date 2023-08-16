import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(
            Color(0xFF54EBD6),
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
