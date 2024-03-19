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

class StackFitChange extends StackEvent {
  StackFit stackFit;

  StackFitChange({
    required this.stackFit,
  });
}

class StackClipChange extends StackEvent {
  Clip clip;
  
  StackClipChange({
    required this.clip,
  });
}
