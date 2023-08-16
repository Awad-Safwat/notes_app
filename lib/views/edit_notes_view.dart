import 'package:flutter/material.dart';

import '../custome_widgets/app_bar.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({super.key});

  @override
  Widget build(context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: 44,
          right: 16,
          left: 16,
        ),
        child: Column(
          children: [
            CustomAppBar(
              pageTitle: 'Edit Note',
              icon: Icons.check,
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
