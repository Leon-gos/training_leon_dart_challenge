import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class BottomAppbarState extends Equatable {
  final bool hasFloatButton;
  final bool hasNotch;
  final FloatingActionButtonLocation floatButtonLocation;

  const BottomAppbarState({
    required this.hasFloatButton,
    required this.hasNotch,
    required this.floatButtonLocation,
  });

  factory BottomAppbarState.ds() => const BottomAppbarState(
        hasFloatButton: false,
        hasNotch: false,
        floatButtonLocation: FloatingActionButtonLocation.endFloat,
      );

  BottomAppbarState copyWith({
    bool? hasFloatButton,
    bool? hasNotch,
    FloatingActionButtonLocation? floatButtonLocation,
  }) {
    return BottomAppbarState(
      hasFloatButton: hasFloatButton ?? this.hasFloatButton,
      hasNotch: hasNotch ?? this.hasNotch,
      floatButtonLocation: floatButtonLocation ?? this.floatButtonLocation,
    );
  }

  @override
  List<Object?> get props => [hasFloatButton, hasNotch, floatButtonLocation];

  bool isHasDockFloatButton() {
    return hasFloatButton &&
        (floatButtonLocation == FloatingActionButtonLocation.centerDocked ||
            floatButtonLocation == FloatingActionButtonLocation.endDocked);
  }
}
