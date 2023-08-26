import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';

class ColorsList extends StatelessWidget {
  const ColorsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: BlocProvider.of<NotesCubit>(context).colorsList.length,
        itemBuilder: (context, index) => ColorsListItems(
          index: index,
        ),
      ),
    );
  }
}

class ColorsListItems extends StatelessWidget {
  const ColorsListItems({
    super.key,
    required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: GestureDetector(
        onTap: () {},
        child: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 40,
          child: CircleAvatar(
            backgroundColor:
                BlocProvider.of<NotesCubit>(context).colorsList[index],
            radius: 35,
          ),
        ),
      ),
    );
  }
}
