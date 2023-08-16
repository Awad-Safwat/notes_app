import 'package:flutter/material.dart';

import 'bottomsheebody.dart';
import 'custome_button.dart';
import 'custome_text_field.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8, bottom: 8),
      child: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
              ),
            ),
            context: context,
            builder: (BuildContext context) {
              return const BottomSheetBody();
            },
          );
        },
        backgroundColor: const Color(0xFF54EBD6).withOpacity(1),
        child: const Icon(
          Icons.add,
          size: 40,
        ),
      ),
    );
  }
}
