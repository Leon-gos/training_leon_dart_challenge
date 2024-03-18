import 'package:flutter/material.dart';

class RowColumnEvent {}

class RowColumnTypeChange extends RowColumnEvent {
  final bool isRow;
  RowColumnTypeChange({required this.isRow});
}

class RowColumnMainAsixSizeChange extends RowColumnEvent {
  final MainAxisSize mainAxisSize;
  RowColumnMainAsixSizeChange({required this.mainAxisSize});
}

class RowColumnMainAxisAlignmentChange extends RowColumnEvent {
  final MainAxisAlignment mainAxisAlignment;
  RowColumnMainAxisAlignmentChange({required this.mainAxisAlignment});
}

class RowColumnCrossAxisAlignmentChange extends RowColumnEvent {
  final CrossAxisAlignment crossAxisAlignment;
  RowColumnCrossAxisAlignmentChange({required this.crossAxisAlignment});
}

class RowColumnVerticalDirection extends RowColumnEvent {
  final VerticalDirection verticalDirection;
  RowColumnVerticalDirection({required this.verticalDirection});
}

class RowColumnTextDirection extends RowColumnEvent {
  final TextDirection textDirection;
  RowColumnTextDirection({required this.textDirection});
}

class RowColumnTextBaseline extends RowColumnEvent {
  final TextBaseline textBaseline;
  RowColumnTextBaseline({required this.textBaseline});
}