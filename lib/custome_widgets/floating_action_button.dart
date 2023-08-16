import 'package:flutter/material.dart';

import 'custome_text_field.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12, bottom: 8),
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
              return Container(
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 25,
                  ),
                  child: Column(
                    children: [
                      CustomTextField(
                        minLines: 1,
                        maxLines: 2,
                        lableText: 'Title',
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      CustomTextField(
                        minLines: 10,
                        maxLines: 20,
                        lableText: 'Cotent',
                      ),
                    ],
                  ),
                ),
              );
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
