import 'package:flutter/material.dart';
import 'package:notes_app/cubits/add_new_notes_cubit/add_new_note_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/validate_user_input_cubit/validate_user_inputs_cubit.dart';
import 'bottomsheet_body_form.dart';

class BottomSheetBody extends StatelessWidget {
  const BottomSheetBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AddNewNoteCubit()),
        BlocProvider(create: (context) => ValidateUserInputsCubit())
      ],
      child: BlocConsumer<AddNewNoteCubit, AddNewNoteState>(
        listener: (context, state) {
          if (state is AddNewNoteSucsses) {
            Navigator.pop(context);
          } else if (state is AddNewNoteFailer) {
            debugPrint('Failied ${state.errMessage}');
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNewNoteLoading ? true : false,
            child: Padding(
              padding: EdgeInsets.only(
                top: 20,
                left: 16,
                right: 16,
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: const SingleChildScrollView(
                child: BottomSheetBodyForm(),
              ),
            ),
          );
        },
      ),
    );
  }
}
