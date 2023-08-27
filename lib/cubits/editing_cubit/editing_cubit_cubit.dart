import 'package:bloc/bloc.dart';

import '../../models/note_model.dart';

part 'editing_cubit_state.dart';

class EditingNoteCubit extends Cubit<EditingNoteCubitState> {
  EditingNoteCubit() : super(EditingCubitInitial());
  int? newColor;
  NoteModel? selectedNote;
}
