import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class StackState extends Equatable {
  final AlignmentGeometry alignment;
  final TextDirection textDirection;

  const StackState({
    required this.alignment,
    required this.textDirection,
  });

  @override
  List<Object?> get props => [alignment];

  StackState copyWith({
    AlignmentGeometry? alignment,
    TextDirection? textDirection,
  }) {
    return StackState(
      alignment: alignment ?? this.alignment,
      textDirection: textDirection ?? this.textDirection,
    );
  }
}
