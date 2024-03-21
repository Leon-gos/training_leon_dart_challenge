import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app_new/modules/bottom_appbar/bloc/bottom_appbar_state.dart';

class BottomAppbarCubit extends Cubit<BottomAppbarState> {
  BottomAppbarCubit() : super(BottomAppbarState.ds());

  void changeFloatButton(bool value) {
    emit(state.copyWith(hasFloatButton: value));
  }

  void changeNotch(bool value) {
    emit(state.copyWith(hasNotch: value));
  }

  void changeFloatButtonLocation(
    FloatingActionButtonLocation floatingActionButtonLocation,
  ) {
    emit(
      state.copyWith(
        floatButtonLocation: floatingActionButtonLocation,
      ),
    );
  }
}
