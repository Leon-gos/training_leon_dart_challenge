// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class StackEvent {}

class AlignChange extends StackEvent {
  AlignmentGeometry align;
  
  AlignChange({
    required this.align,
  });
}

class TextDirectionChange extends StackEvent {
  TextDirection textDirection;
  
  TextDirectionChange({
    required this.textDirection,
  });
}
