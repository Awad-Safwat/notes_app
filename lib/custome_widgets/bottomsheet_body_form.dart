import 'package:flutter/material.dart';
import 'package:notes_app/cubits/add_new_notes_cubit/add_new_note_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/models/note_model.dart';
import 'custome_button.dart';
import 'custome_text_field.dart';

class bottomSheetBodyForm extends StatefulWidget {
  const bottomSheetBodyForm({
    super.key,
  });

  @override
  State<bottomSheetBodyForm> createState() => _bottomSheetBodyFormState();
}

class _bottomSheetBodyFormState extends State<bottomSheetBodyForm> {
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextFormField(
            onSaved: (value) {
              title = value;
            },
            maxLines: 1,
            lableText: 'Title',
          ),
          const SizedBox(
            height: 12,
          ),
          CustomTextFormField(
            onSaved: (value) {
              subTitle = value;
            },
            maxLines: 10,
            lableText: 'Cotent',
          ),
          const SizedBox(
            height: 30,
          ),
          CustomButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();

                var addNewNoteCubit = BlocProvider.of<AddNewNoteCubit>(context);

                var note = NoteModel(
                  Color: Colors.blue.value,
                  title: title!,
                  supTitle: subTitle!,
                  date: DateTime.now().toString(),
                );

                addNewNoteCubit.addNewNote(note: note);
              } else {
                autovalidateMode = AutovalidateMode.always;

                setState(() {});
              }
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
