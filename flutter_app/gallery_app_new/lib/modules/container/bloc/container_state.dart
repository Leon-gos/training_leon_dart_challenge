// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class ContainerState extends Equatable{
  final bool hasBorder;
  final BorderRadiusGeometry borderRadius;
  final bool hasBoxShadow;
  final Color background;
  final BlendMode blendMode;

  const ContainerState({required this.hasBorder, required this.borderRadius, required this.hasBoxShadow, required this.background, required this.blendMode});

  ContainerState copyWith({
    bool? hasBorder,
    BorderRadiusGeometry? borderRadius,
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
  List<Object?> get props => [hasBorder, borderRadius, hasBoxShadow, background, blendMode];
}
