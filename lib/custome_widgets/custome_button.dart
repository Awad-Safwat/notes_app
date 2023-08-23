import 'package:flutter/material.dart';
import 'package:notes_app/cubits/add_new_notes_cubit/add_new_note_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../constatns.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.onPressed,
    super.key,
  });
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddNewNoteCubit, AddNewNoteState>(
      builder: (context, state) {
        if (state is AddNewNoteLoading) {
          return TextButton(
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(
                kPrimaryColor,
              ),
            ),
            onPressed: onPressed,
            child: const Center(
              child: Center(child: CircularProgressIndicator()),
            ),
          );
        } else {
          return TextButton(
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(
                kPrimaryColor,
              ),
            ),
            onPressed: onPressed,
            // child: ,
            child: const Center(
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
