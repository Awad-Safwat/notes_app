import 'package:flutter/material.dart';
import 'package:notes_app/custome_widgets/search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.pageTitle,
    required this.icon,
    this.iconOnPressed,
  });
  final String pageTitle;
  final IconData icon;
  final void Function()? iconOnPressed;
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
        CustomAppBarIcon(
          icon: icon,
          onPressed: iconOnPressed,
        ),
      ],
    );
  }
}
