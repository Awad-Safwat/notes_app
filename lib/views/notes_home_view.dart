import 'package:flutter/material.dart';

import '../custome_widgets/app_bar.dart';
import '../custome_widgets/item_node.dart';

class NotesHomeView extends StatelessWidget {
  const NotesHomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: 38,
          right: 16,
          left: 16,
        ),
        child: Column(
          children: [
            CustomAppBar(),
            SizedBox(
              height: 10,
            ),
            Center(
              child: ItemNode(),
            ),
          ],
        ),
      ),
    );
  }
}
