import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class StackState extends Equatable {
  final AlignmentGeometry alignment;
  final TextDirection textDirection;
  final StackFit stackFit;
  final Clip clip;

  const StackState({
    required this.alignment,
    required this.textDirection,
    required this.stackFit,
    required this.clip,
  });

  @override
  List<Object?> get props => [alignment, textDirection, stackFit, clip];

  StackState copyWith({
    AlignmentGeometry? alignment,
    TextDirection? textDirection,
    StackFit? stackFit,
    Clip? clip
  }) {
    return StackState(
      alignment: alignment ?? this.alignment,
      textDirection: textDirection ?? this.textDirection,
      stackFit: stackFit ?? this.stackFit,
      clip: clip ?? this.clip,
    );
  }
}
