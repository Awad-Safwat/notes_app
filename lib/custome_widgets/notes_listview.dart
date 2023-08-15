import 'package:flutter/cupertino.dart';

import 'item_node.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: 100,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: const ItemNode(),
            );
          },
        ),
      ),
    );
  }
}
