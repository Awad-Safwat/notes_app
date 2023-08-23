import 'package:flutter/material.dart';
import 'package:notes_app/cubits/validate_user_input_cubit/validate_user_inputs_cubit.dart';
import '../custome_widgets/app_bar.dart';
import '../custome_widgets/custome_text_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({super.key});

  @override
  Widget build(context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: 44,
          right: 16,
          left: 16,
        ),
        child: EditNotesPageForm(),
      ),
    );
  }
}

class EditNotesPageForm extends StatefulWidget {
  const EditNotesPageForm({
    super.key,
  });

  @override
  State<EditNotesPageForm> createState() => _EditNotesPageFormState();
}

class _EditNotesPageFormState extends State<EditNotesPageForm> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBar(
          pageTitle: 'Edit Note',
          icon: Icons.check,
        ),
        const SizedBox(
          height: 30,
        ),
        CustomTextFormField(
          controller: context.read<ValidateUserInputsCubit>().titleController,
          onChange: (value) {
            title = value;
          },
          maxLines: 1,
          lableText: 'Title',
        ),
        const SizedBox(
          height: 12,
        ),
        CustomTextFormField(
          controller: context.read<ValidateUserInputsCubit>().bodyController,
          onChange: (value) {
            content = value;
          },
          maxLines: 20,
          lableText: 'content',
        ),
      ],
    );
  }
}
