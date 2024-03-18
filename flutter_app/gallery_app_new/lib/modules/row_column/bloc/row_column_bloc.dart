import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app_new/modules/row_column/bloc/row_column_event.dart';
import 'package:gallery_app_new/modules/row_column/bloc/row_column_state.dart';

class RowColumnBloc extends Bloc<RowColumnEvent, RowColumnState> {
  RowColumnBloc()
      : super(const RowColumnState(
            isRow: true,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            verticalDirection: VerticalDirection.down,
            textDirection: TextDirection.ltr,
            textBaseline: TextBaseline.alphabetic)) {
    on<RowColumnTypeChange>(
        (event, emit) => emit(state.copyWith(isRow: event.isRow)));

    on<RowColumnMainAsixSizeChange>((event, emit) =>
        emit(state.copyWith(mainAxisSize: event.mainAxisSize)));

    on<RowColumnMainAxisAlignmentChange>((event, emit) =>
        emit(state.copyWith(mainAxisAlignment: event.mainAxisAlignment)));

    on<RowColumnCrossAxisAlignmentChange>((event, emit) =>
        emit(state.copyWith(crossAxisAlignment: event.crossAxisAlignment)));
  }
}
