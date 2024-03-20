import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app_new/modules/wrap_chip/bloc/wrap_chip_state.dart';

class WrapChipCubit extends Cubit<WrapChipState> {
  WrapChipCubit(): super(WrapChipState.ds());

  void changeElevation(bool value) {
    emit(state.copyWith(hasElevation: value));
  }

  void changeAvatar(bool value) {
    emit(state.copyWith(hasAvatar: value));
  }

  void changeDeleteIcon(bool value) {
    emit(state.copyWith(hasDeleteIcon: value));
  }

  void changeChipShape(MyChipShape shape) {
    emit(state.copyWith(shape: shape));
  }

  void changeSpacing(bool value) {
    emit(state.copyWith(hasSpacing: value));
  }

  void changeRunSpacing(bool value) {
    emit(state.copyWith(hasRunSpacing: value));
  }
}