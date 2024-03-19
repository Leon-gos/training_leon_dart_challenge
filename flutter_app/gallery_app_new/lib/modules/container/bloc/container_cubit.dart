import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app_new/modules/container/bloc/container_state.dart';

class ContainerCubit extends Cubit<ContainerState> {
  ContainerCubit()
      : super(
          const ContainerState(
              hasBorder: false,
              borderRadius: BorderRadiusType.borderNone,
              hasBoxShadow: false,
              background: Colors.blue,
              blendMode: BlendMode.src),
        );
  
  void changeBorder(bool hasBorder){
    emit(state.copyWith(hasBorder: hasBorder));
  }

  void changeBorderRadius(BorderRadiusType borderRadius) {
    emit(state.copyWith(borderRadius: borderRadius));
  }

  void changeBoxShadow(bool hasBoxShadow) {
    emit(state.copyWith(hasBoxShadow: hasBoxShadow));
  }

  void changeBackgroundColor(Color background) {
    emit(state.copyWith(background: background));
  }

  void changeBackgroundBlendMode(BlendMode blendMode) {
    emit(state.copyWith(blendMode: blendMode));
  }
}
