import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

enum MyChipShape {
  normal(shape: null),
  roundedRectangleBorder(shape: RoundedRectangleBorder()),
  stadiumBorder(shape: StadiumBorder()),
  circleBorder(shape: CircleBorder()),
  beveledRectangleBorder(shape: BeveledRectangleBorder()),
  continuousRectangleBorder(shape: ContinuousRectangleBorder());

  final OutlinedBorder? shape;

  const MyChipShape({required this.shape});
}

class WrapChipState extends Equatable {
  final bool hasElevation;
  final bool hasAvatar;
  final bool hasDeleteIcon;
  final MyChipShape shape;
  final bool hasSpacing;
  final bool hasRunSpacing;

  @override
  List<Object?> get props => [
        hasElevation,
        hasAvatar,
        hasDeleteIcon,
        shape,
        hasSpacing,
        hasRunSpacing,
      ];

  const WrapChipState({
    required this.hasElevation,
    required this.hasAvatar,
    required this.hasDeleteIcon,
    required this.shape,
    required this.hasSpacing,
    required this.hasRunSpacing,
  });

  WrapChipState copyWith({
    bool? hasElevation,
    bool? hasAvatar,
    bool? hasDeleteIcon,
    MyChipShape? shape,
    bool? hasSpacing,
    bool? hasRunSpacing,
  }) {
    return WrapChipState(
      hasElevation: hasElevation ?? this.hasElevation,
      hasAvatar: hasAvatar ?? this.hasAvatar,
      hasDeleteIcon: hasDeleteIcon ?? this.hasDeleteIcon,
      shape: shape ?? this.shape,
      hasSpacing: hasSpacing ?? this.hasSpacing,
      hasRunSpacing: hasRunSpacing ?? this.hasRunSpacing,
    );
  }

  factory WrapChipState.ds() => const WrapChipState(
        hasElevation: false,
        hasAvatar: false,
        hasDeleteIcon: false,
        shape: MyChipShape.normal,
        hasSpacing: false,
        hasRunSpacing: false,
      );
}
