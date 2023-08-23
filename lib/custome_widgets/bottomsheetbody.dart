import 'package:flutter/material.dart';
import 'package:notes_app/cubits/add_new_notes_cubit/add_new_note_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bottomsheet_body_form.dart';

class BottomSheetBody extends StatelessWidget {
  const BottomSheetBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AddNewNoteCubit>(
      create: (context) => AddNewNoteCubit(),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 25,
          ),
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
                child: const bottomSheetBodyForm(),
              );
            },
          ),
        ),
      ),
    );
  }
}
