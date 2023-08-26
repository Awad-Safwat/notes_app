import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constatns.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NoteModel>? notesList;

  NoteModel? selectedNote;

  List<Color> colorsList = [
    const Color(0xFFDDF8E8),
    const Color(0xFFCDD5D1),
    const Color(0xFFB4A6AB),
    const Color(0xFF946E83),
    const Color(0xFF615055),
  ];
  getNotes() {
    var notesBox = Hive.box<NoteModel>(kNotesBox);
    notesList = notesBox.values.toList();
    emit(NotesSucssess());
  }
}
