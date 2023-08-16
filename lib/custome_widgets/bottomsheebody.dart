import 'package:flutter/cupertino.dart';

import 'custome_button.dart';
import 'custome_text_field.dart';

class BottomSheetBody extends StatelessWidget {
  const BottomSheetBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 25,
      ),
      child: Column(
        children: [
          CustomTextField(
            minLines: 1,
            maxLines: 2,
            lableText: 'Title',
          ),
          SizedBox(
            height: 12,
          ),
          CustomTextField(
            minLines: 10,
            maxLines: 20,
            lableText: 'Cotent',
          ),
          SizedBox(
            height: 50,
          ),
          CustomButton(),
        ],
      ),
    );
  }
}
