import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';

import 'app_bar.dart';
import 'custome_text_field.dart';

class EditNotesViewForm extends StatefulWidget {
  const EditNotesViewForm({
    super.key,
  });

  @override
  State<EditNotesViewForm> createState() => _EditNotesViewFormState();
}

class _EditNotesViewFormState extends State<EditNotesViewForm> {
  String? title, content;

  @override
  Widget build(BuildContext context) {
    NoteModel? selectedNote = BlocProvider.of<NotesCubit>(context).selectedNote;
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomAppBar(
            pageTitle: 'Edit Note',
            icon: Icons.check,
            iconOnPressed: () {
              selectedNote!.title = title ?? selectedNote.title;
              selectedNote.supTitle = content ?? selectedNote.title;
              BlocProvider.of<NotesCubit>(context).getNotes();
              Navigator.pop(context);
            },
          ),
          const SizedBox(
            height: 30,
          ),
          CustomTextFormField(
            onChange: (value) {
              title = value;
            },
            maxLines: 1,
            lableText: selectedNote!.title,
          ),
          const SizedBox(
            height: 12,
          ),
          CustomTextFormField(
            onChange: (value) {
              content = value;
            },
            maxLines: 20,
            lableText: selectedNote.supTitle,
          ),
        ],
      ),
    );
  }
}
