import 'package:flutter/material.dart';
import 'package:notes_app/cubits/add_new_notes_cubit/add_new_note_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/cubits/validate_user_input_cubit/validate_user_inputs_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'colors_list_view_add_new_note.dart';
import 'custome_button.dart';
import 'custome_text_field.dart';

class BottomSheetBodyForm extends StatelessWidget {
  const BottomSheetBodyForm({super.key});

  @override
  Widget build(BuildContext context) {
    var cubitValues = context.read<ValidateUserInputsCubit>();

    return Form(
      key: cubitValues.formKey,
      autovalidateMode: AutovalidateMode.always,
      child: Column(
        children: [
          CustomTextFormField(
            onChange: (value) {
              cubitValues.title = value;
            },
            maxLines: 1,
            lableText: 'Title',
          ),
          const SizedBox(
            height: 12,
          ),
          CustomTextFormField(
            onChange: (value) {
              cubitValues.subTitle = value;
            },
            maxLines: 10,
            lableText: 'Cotent',
          ),
          const SizedBox(
            height: 10,
          ),
          const ColorsListViewforAddNewNote(),
          const SizedBox(
            height: 10,
          ),
          CustomButton(
            onPressed: () {
              if (cubitValues.formKey.currentState!.validate()) {
                cubitValues.formKey.currentState!.save();
                var addNewNoteCubit = BlocProvider.of<AddNewNoteCubit>(context);

                var note = NoteModel(
                  Color: BlocProvider.of<AddNewNoteCubit>(context)
                      .selectedColor!
                      .value,
                  title: cubitValues.title!,
                  supTitle: cubitValues.subTitle!,
                  date: DateTime.now().toString(),
                );

                addNewNoteCubit.addNewNote(note: note);
                BlocProvider.of<NotesCubit>(context).getNotes();
              } else {}
            },
          ),
          const SizedBox(
            height: 12,
          ),
        ],
      ),
    );
  }
}
