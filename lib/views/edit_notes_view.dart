import 'package:flutter/material.dart';
import '../custome_widgets/app_bar.dart';
import '../custome_widgets/custome_text_field.dart';

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
              height: 30,
            ),
            CustomTextField(
              maxLines: 1,
              lableText: 'Title',
            ),
            SizedBox(
              height: 12,
            ),
            CustomTextField(
              maxLines: 20,
              lableText: 'Cotent',
            ),
          ],
        ),
      ),
    );
  }
}
