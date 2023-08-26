import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_notes_view.dart';

class ItemNode extends StatelessWidget {
  const ItemNode({
    super.key,
    required this.note,
    required this.noteIndex,
  });

  final NoteModel note;
  final int noteIndex;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        BlocProvider.of<NotesCubit>(context).selectedNote = note;
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const EditNotesView();
        }));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color(note.Color),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(note.title,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                    )),
                subtitle: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    note.supTitle,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.transparent.withOpacity(0.5),
                      fontFamily: 'assets/fonts/Poppins',
                    ),
                  ),
                ),
                trailing: IconButton(
                  color: Colors.black,
                  iconSize: 32,
                  icon: const Icon(Icons.delete),
                  onPressed: () {
                    BlocProvider.of<NotesCubit>(context)
                        .notesList![noteIndex]
                        .delete();
                    BlocProvider.of<NotesCubit>(context).getNotes();
                  },
                ),
              ),
              Text(
                DateFormat('yMd')
                    .add_jm()
                    .format(DateTime.parse(note.date))
                    .toString(),
                style: TextStyle(
                  color: Colors.transparent.withOpacity(0.4),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
