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
            maxLines: 1,
            lableText: 'Title',
          ),
          SizedBox(
            height: 12,
          ),
          CustomTextField(
            maxLines: 10,
            lableText: 'Cotent',
          ),
          Spacer(),
          CustomButton(),
        ],
      ),
    );
  }
}
