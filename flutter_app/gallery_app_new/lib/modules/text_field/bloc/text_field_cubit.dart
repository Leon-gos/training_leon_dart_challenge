import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app_new/modules/text_field/bloc/text_field_state.dart';

class TextFieldCubit extends Cubit<TextFieldState> {
  TextFieldCubit(): super(TextFieldState.ds());

  void changeHintText(bool value) {
    emit(state.copyWith(hasHinText: value));
  }

  void changeLabelText(bool value) {
    emit(state.copyWith(hasLabelText: value));
  }
  
  void changeHelpText(bool value) {
    emit(state.copyWith(hasHelpText: value));
  }

  void changeErrorText(bool value) {
    emit(state.copyWith(hasErrorText: value));
  }

  void changeCounterText(bool value) {
    emit(state.copyWith(hasCounterText: value));
  }

  void changePrefix(bool value) {
    emit(state.copyWith(hasPrefix: value));
  }

  void changeSuffix(bool value) {
    emit(state.copyWith(hasSuffix: value));
  }

  void changePrefixIcon(bool value) {
    emit(state.copyWith(hasPrefixIcon: value));
  }
}