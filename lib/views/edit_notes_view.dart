import 'package:flutter/material.dart';
import '../custome_widgets/app_bar.dart';
import '../custome_widgets/custome_text_field.dart';
import '../custome_widgets/edit_notes_view_form.dart';

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
        child: EditNotesViewForm(),
      ),
    );
  }
}
