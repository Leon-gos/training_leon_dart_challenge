import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app_new/modules/row_column/bloc/row_column_state.dart';

class RowColumnCubit extends Cubit<RowColumnState> {
  RowColumnCubit(): super(const RowColumnState(
            isRow: true,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            verticalDirection: VerticalDirection.down,
            textDirection: TextDirection.ltr,
            textBaseline: TextBaseline.alphabetic));

  void changeRowColumnType(bool isRow) {
    emit(state.copyWith(isRow: isRow));
  }

  void changeMainAxisSize(MainAxisSize mainAxisSize) {
    emit(state.copyWith(mainAxisSize: mainAxisSize));
  }

  void changeMainAxisAlignment(MainAxisAlignment mainAxisAlignment) {
    emit(state.copyWith(mainAxisAlignment: mainAxisAlignment));
  }

  void changeCrossAxisAlignment(CrossAxisAlignment crossAxisAlignment) {
    emit(state.copyWith(crossAxisAlignment: crossAxisAlignment));
  }

  void changeVerticalDirection(VerticalDirection verticalDirection) {
    emit(state.copyWith(verticalDirection: verticalDirection));
  }

  void changeTextDirection(TextDirection textDirection) {
    emit(state.copyWith(textDirection: textDirection));
  }

  void changeTextBaseline(TextBaseline textBaseline) {
    emit(state.copyWith(textBaseline: textBaseline));
  }
}