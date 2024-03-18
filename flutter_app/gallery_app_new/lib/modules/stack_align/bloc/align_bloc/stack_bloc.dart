import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app_new/modules/stack_align/bloc/align_bloc/stack_event.dart';
import 'package:gallery_app_new/modules/stack_align/bloc/align_bloc/stack_state.dart';

class StackBloc extends Bloc<StackEvent, StackState> {
  StackBloc():super(StackState()) {
    on<AlignChange>((event, emit) {
      final s = StackState();
      s.align = event.align;
      emit(s);
    });
  }
}