import 'package:bloc/bloc.dart';
part 'add_new_note_state.dart';

class AddNewNoteCubit extends Cubit<AddNewNoteState> {
  AddNewNoteCubit() : super(AddNewNoteInitial());
}
