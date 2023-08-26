import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_new_notes_cubit/add_new_note_cubit.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';

class ColorsList extends StatefulWidget {
  const ColorsList({
    super.key,
  });

  @override
  State<ColorsList> createState() => _ColorsListState();
}

class _ColorsListState extends State<ColorsList> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: BlocProvider.of<NotesCubit>(context).colorsList.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: GestureDetector(
            onTap: () {
              currentIndex = index;
              BlocProvider.of<AddNewNoteCubit>(context).selectedColor =
                  BlocProvider.of<NotesCubit>(context).colorsList[index];
              setState(() {});
            },
            child: ColorsListItems(
              isActive: currentIndex == index,
              color: BlocProvider.of<NotesCubit>(context).colorsList[index],
            ),
          ),
        ),
      ),
    );
  }
}

class ColorsListItems extends StatelessWidget {
  const ColorsListItems({
    super.key,
    required this.isActive,
    required this.color,
  });
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            backgroundColor: Colors.white,
            radius: 40,
            child: CircleAvatar(
              backgroundColor: color,
              radius: 35,
            ),
          )
        : CircleAvatar(
            backgroundColor: color,
            radius: 35,
          );
  }
}
