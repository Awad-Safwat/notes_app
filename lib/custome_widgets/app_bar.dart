import 'package:flutter/material.dart';
import 'package:notes_app/custome_widgets/search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const  Row(
        children: [
          Text(
            'Notes',
            style: TextStyle(
              fontSize: 32,
            ),
          ),
          Spacer(),
          CustomSearchIcon(),
        ],
      
    );
  }
}
