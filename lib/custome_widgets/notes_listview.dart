import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';

import 'item_node.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<NotesCubit>(context).notesList ?? [];
        return Expanded(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: notes.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: ItemNode(
                    note: notes[index],
                    noteIndex: index,
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
