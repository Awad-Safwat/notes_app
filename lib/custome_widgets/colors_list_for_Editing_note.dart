import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constatns.dart';

import '../cubits/editing_cubit/editing_cubit_cubit.dart';
import 'colors_list_item.dart';

class ColorsListForEditeNote extends StatefulWidget {
  const ColorsListForEditeNote({
    super.key,
    required this.oldColor,
  });
  final int oldColor;
  @override
  State<ColorsListForEditeNote> createState() => _ColorsListForEditeNoteState();
}

class _ColorsListForEditeNoteState extends State<ColorsListForEditeNote> {
  late int currentIndex;

  @override
  void initState() {
    currentIndex = kColorsList.indexOf(Color(widget.oldColor));
    super.initState();
  }

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
              BlocProvider.of<EditingNoteCubit>(context).newColor =
                  kColorsList[currentIndex].value;
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
