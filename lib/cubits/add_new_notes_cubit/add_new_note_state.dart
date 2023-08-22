part of 'add_new_note_cubit.dart';

abstract class AddNewNoteState {}

final class AddNewNoteInitial extends AddNewNoteState {}

final class AddNewNoteLoading extends AddNewNoteState {}

final class AddNewNoteSucsses extends AddNewNoteState {}

final class AddNewNoteFailer extends AddNewNoteState {
  final String errMessage;

  AddNewNoteFailer(this.errMessage);
}
