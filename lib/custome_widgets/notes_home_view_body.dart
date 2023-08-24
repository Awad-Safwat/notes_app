import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';

import 'app_bar.dart';
import 'floating_action_button.dart';
import 'notes_listview.dart';

class NotesHomeViewBody extends StatefulWidget {
  const NotesHomeViewBody({
    super.key,
  });

  @override
  State<NotesHomeViewBody> createState() => _NotesHomeViewBodyState();
}

class _NotesHomeViewBodyState extends State<NotesHomeViewBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).getNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: 44,
          right: 16,
          left: 16,
        ),
        child: Column(
          children: [
            CustomAppBar(
              pageTitle: 'Notes',
              icon: Icons.search,
            ),
            SizedBox(
              height: 10,
            ),
            NotesListView(),
          ],
        ),
      ),
      floatingActionButton: CustomFloatingActionButton(),
    );
  }
}
