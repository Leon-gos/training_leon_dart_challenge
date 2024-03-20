import 'package:equatable/equatable.dart';

class TextFieldState extends Equatable {
  final bool hasHinText;
  final bool hasLabelText;
  final bool hasHelpText;
  final bool hasErrorText;
  final bool hasCounterText;
  final bool hasPrefix;
  final bool hasSuffix;
  final bool hasPrefixIcon;

  @override
  List<Object?> get props => [
        hasHinText,
        hasLabelText,
        hasHelpText,
        hasErrorText,
        hasCounterText,
        hasPrefix,
        hasSuffix,
        hasPrefixIcon,
      ];

  const TextFieldState({
    required this.hasHinText,
    required this.hasLabelText,
    required this.hasHelpText,
    required this.hasErrorText,
    required this.hasCounterText,
    required this.hasPrefix,
    required this.hasSuffix,
    required this.hasPrefixIcon,
  });

  factory TextFieldState.ds() {
    return const TextFieldState(
      hasHinText: false,
      hasLabelText: false,
      hasHelpText: false,
      hasErrorText: false,
      hasCounterText: false,
      hasPrefix: false,
      hasSuffix: false,
      hasPrefixIcon: false,
    );
  }

  TextFieldState copyWith({
    bool? hasHinText,
    bool? hasLabelText,
    bool? hasHelpText,
    bool? hasErrorText,
    bool? hasCounterText,
    bool? hasPrefix,
    bool? hasSuffix,
    bool? hasPrefixIcon,
  }) {
    return TextFieldState(
      hasHinText: hasHinText ?? this.hasHinText,
      hasLabelText: hasLabelText ?? this.hasLabelText,
      hasHelpText: hasHelpText ?? this.hasHelpText,
      hasErrorText: hasErrorText ?? this.hasErrorText,
      hasCounterText: hasCounterText ?? this.hasCounterText,
      hasPrefix: hasPrefix ?? this.hasPrefix,
      hasSuffix: hasSuffix ?? this.hasSuffix,
      hasPrefixIcon: hasPrefixIcon ?? this.hasPrefixIcon,
    );
  }
}
