import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constatns.dart';
import 'package:notes_app/cubits/add_new_notes_cubit/add_new_note_cubit.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';

import 'colors_list_item.dart';

class ColorsListViewforAddNewNote extends StatefulWidget {
  const ColorsListViewforAddNewNote({
    super.key,
  });

  @override
  State<ColorsListViewforAddNewNote> createState() =>
      _ColorsListViewforAddNewNoteState();
}

class _ColorsListViewforAddNewNoteState
    extends State<ColorsListViewforAddNewNote> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kColorsList.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: GestureDetector(
            onTap: () {
              currentIndex = index;
              BlocProvider.of<AddNewNoteCubit>(context).selectedColor =
                  kColorsList[index];
              setState(() {});
            },
            child: ColorListItem(
              isActive: currentIndex == index,
              color: kColorsList[index],
            ),
          ),
        ),
      ),
    );
  }
}
