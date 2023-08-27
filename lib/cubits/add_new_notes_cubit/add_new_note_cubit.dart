import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constatns.dart';
import 'package:notes_app/models/note_model.dart';
part 'add_new_note_state.dart';

class AddNewNoteCubit extends Cubit<AddNewNoteState> {
  AddNewNoteCubit() : super(AddNewNoteInitial());

  Color selectedColor = const Color(0xFFDDF8E8);
  addNewNote({required NoteModel note}) async {
    emit(AddNewNoteLoading());

    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      await notesBox.add(note);
      emit(AddNewNoteSucsses());
    } catch (e) {
      emit(AddNewNoteFailer(e.toString()));
    }
  }
}
