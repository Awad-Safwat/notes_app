import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/widgets.dart';

part 'validate_user_inputs_state.dart';

class ValidateUserInputsCubit extends Cubit<ValidateUserInputsState> {
  ValidateUserInputsCubit() : super(ValidateUserInputsInitial());
  TextEditingController titleController = TextEditingController();
  String? title, subTitle;
  TextEditingController bodyController = TextEditingController();
  final formKey = GlobalKey<FormState>();
}
