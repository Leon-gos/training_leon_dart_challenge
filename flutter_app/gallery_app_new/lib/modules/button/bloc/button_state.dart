import 'package:equatable/equatable.dart';

class ButtonState extends Equatable {
  final int dropdownButtonValue;
  final int dropdownFormFieldValue;

  const ButtonState({
    required this.dropdownButtonValue,
    required this.dropdownFormFieldValue,
  });

  factory ButtonState.ds() => const ButtonState(
        dropdownButtonValue: 0,
        dropdownFormFieldValue: 0,
      );

  @override
  List<Object?> get props => [dropdownButtonValue, dropdownFormFieldValue];

  ButtonState copyWith({
    int? dropdownButtonValue,
    int? dropdownFormFieldValue,
  }) {
    return ButtonState(
      dropdownButtonValue: dropdownButtonValue ?? this.dropdownButtonValue,
      dropdownFormFieldValue:
          dropdownFormFieldValue ?? this.dropdownFormFieldValue,
    );
  }
}
