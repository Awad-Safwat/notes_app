import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubits/editing_cubit/editing_cubit_cubit.dart';
import '../custome_widgets/edit_notes_view_form.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({super.key});

  @override
  Widget build(context) {
    return WillPopScope(
      onWillPop: () async {
        BlocProvider.of<EditingNoteCubit>(context).newColor = null;

        return true;
      },
      child: const Scaffold(
        body: Padding(
          padding: EdgeInsets.only(
            top: 44,
            right: 16,
            left: 16,
          ),
          child: EditNotesViewForm(),
        ),
      ),
    );
  }
}
