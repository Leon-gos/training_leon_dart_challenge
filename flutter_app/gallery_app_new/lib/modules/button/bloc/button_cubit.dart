import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app_new/modules/button/bloc/button_state.dart';

class ButtonCubit extends Cubit<ButtonState> {
  ButtonCubit(): super(ButtonState.ds());

  void changeDropdownButtonSelectedItem(int value) {
    emit(state.copyWith(dropdownButtonValue: value));
  }

void changeDropdownFormFieldSelectedItem(int value) {
    emit(state.copyWith(dropdownFormFieldValue: value));
  }
}