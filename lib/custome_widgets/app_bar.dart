import 'package:flutter/material.dart';
import 'package:notes_app/custome_widgets/search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.pageTitle,
    required this.icon,
  });
  final String pageTitle;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          pageTitle,
          style: const TextStyle(
            fontSize: 32,
          ),
        ),
        const Spacer(),
        CustomAppBarIcon(icon: icon),
      ],
    );
  }
}
