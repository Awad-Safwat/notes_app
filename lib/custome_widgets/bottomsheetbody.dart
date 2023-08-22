import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/cubits/add_new_notes_cubit/add_new_note_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'custome_button.dart';
import 'custome_text_field.dart';

class BottomSheetBody extends StatelessWidget {
  const BottomSheetBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 25,
        ),
        child: bottomSheetBodyForm(),
      ),
    );
  }
}

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
    return BlocProvider<AddNewNoteCubit>(
      create: (context) => AddNewNoteCubit(),
      child: Form(
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
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
