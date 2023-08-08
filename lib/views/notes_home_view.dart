import 'package:flutter/material.dart';

import '../custome_widgets/app_bar.dart';

class NotesHomeView extends StatelessWidget {
  const NotesHomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          CustomAppBar(),
        ],
      ),
    );
  }
}
