import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

enum BorderRadiusType {
  borderNone(value: 0),
  border8(value: 8),
  border16(value: 16),
  border32(value: 32);

  final double value;

  const BorderRadiusType({required this.value});
}

class ContainerState extends Equatable {
  final bool hasBorder;
  final BorderRadiusType borderRadius;
  final bool hasBoxShadow;
  final Color background;
  final BlendMode blendMode;

  const ContainerState({
    required this.hasBorder,
    required this.borderRadius,
    required this.hasBoxShadow,
    required this.background,
    required this.blendMode,
  });

  factory ContainerState.ds() => const ContainerState(
        hasBorder: false,
        borderRadius: BorderRadiusType.borderNone,
        hasBoxShadow: false,
        background: Colors.blue,
        blendMode: BlendMode.src,
      );

  ContainerState copyWith({
    bool? hasBorder,
    BorderRadiusType? borderRadius,
    bool? hasBoxShadow,
    Color? background,
    BlendMode? blendMode,
  }) {
    return ContainerState(
      hasBorder: hasBorder ?? this.hasBorder,
      borderRadius: borderRadius ?? this.borderRadius,
      hasBoxShadow: hasBoxShadow ?? this.hasBoxShadow,
      background: background ?? this.background,
      blendMode: blendMode ?? this.blendMode,
    );
  }

  @override
  List<Object?> get props =>
      [hasBorder, borderRadius, hasBoxShadow, background, blendMode];
}
