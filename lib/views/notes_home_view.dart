import 'package:flutter/material.dart';

import '../custome_widgets/app_bar.dart';
import '../custome_widgets/floating_action_button.dart';
import '../custome_widgets/notes_listview.dart';

class NotesHomeView extends StatelessWidget {
  const NotesHomeView({super.key});
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
            CustomAppBar(),
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
