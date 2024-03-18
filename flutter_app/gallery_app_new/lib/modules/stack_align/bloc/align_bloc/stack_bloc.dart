import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app_new/modules/stack_align/bloc/align_bloc/stack_event.dart';
import 'package:gallery_app_new/modules/stack_align/bloc/align_bloc/stack_state.dart';

class StackBloc extends Bloc<StackEvent, StackState> {
  StackBloc()
      : super(const StackState(
            alignment: Alignment.center,
            textDirection: TextDirection.ltr,
            stackFit: StackFit.loose,
            clip: Clip.none)) {

    on<AlignChange>((event, emit) {
      emit(state.copyWith(alignment: event.align));
    });

    on<TextDirectionChange>(
      (event, emit) {
        emit(state.copyWith(textDirection: event.textDirection));
      },
    );

    on<StackFitChange>((event, emit) {
      emit(state.copyWith(stackFit: event.stackFit));
    });

    on<StackClipChange>((event, emit) {
      var clip = event.clip;
      emit(state.copyWith(clip: clip));
    });
  }
}
