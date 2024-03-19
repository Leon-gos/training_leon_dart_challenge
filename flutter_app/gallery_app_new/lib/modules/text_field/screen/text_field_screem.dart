import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app_new/modules/text_field/bloc/text_field_cubit.dart';
import 'package:gallery_app_new/modules/text_field/bloc/text_field_state.dart';
import 'package:gallery_app_new/widgets/my_app_bar_widget.dart';

class TextFieldScreen extends StatelessWidget {
  const TextFieldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBarWidget(title: "Form field"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buidDemo(),
            const Divider(
              height: 0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  _buildHintText(),
                  _buildLabelText(),
                  _buildHelpText(),
                  _buildErrorText(),
                  _buildCounterText(),
                  _buildPrefix(),
                  _buildSuffix(),
                  _buildPrefixIcon(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buidDemo() {
    return BlocBuilder<TextFieldCubit, TextFieldState>(
        builder: (context, state) {

      var decoration = InputDecoration(
        hintText: state.hasHinText ? "Hint text" : null,
        label: state.hasLabelText ? const Text("Label text") : null,
        helperText: state.hasHelpText ? "Helper text" : null,
        error: state.hasErrorText ? const Text("Error text") : null,
        counterText: state.hasCounterText ? "Counter text" : null,
        prefix: state.hasPrefix ? const Text("Prefix") : null,
        suffix: state.hasSuffix ? const Text("Suffix") : null,
        prefixIcon: state.hasPrefixIcon ? const Icon(Icons.account_circle_outlined) : null,
      );

      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              decoration: decoration,
            ),
            const SizedBox(
              height: 16,
            ),
            TextField(
              decoration: decoration.copyWith(
                border: const OutlineInputBorder(),
              ),
            ),
          ],
        ),
      );
    });
  }

  Widget _buildHintText() {
    return BlocBuilder<TextFieldCubit, TextFieldState>(
      buildWhen: (previous, current) => previous.hasHinText != current.hasHinText,
      builder: (context, state) => Row(
        children: [
          const Text("Hint text"),
          const Spacer(),
          Switch(
            value: state.hasHinText,
            onChanged: (value) {
              context.read<TextFieldCubit>().changeHintText(value);
            },
          )
        ],
      ),
    );
  }

  Widget _buildLabelText() {
    return BlocBuilder<TextFieldCubit, TextFieldState>(
      buildWhen: (previous, current) => previous.hasLabelText != current.hasLabelText,
      builder: (context, state) => Row(
        children: [
          const Text("Label text"),
          const Spacer(),
          Switch(
            value: state.hasLabelText,
            onChanged: (value) {
              context.read<TextFieldCubit>().changeLabelText(value);
            },
          )
        ],
      ),
    );
  }

  Widget _buildHelpText() {
    return BlocBuilder<TextFieldCubit, TextFieldState>(
      buildWhen: (previous, current) => previous.hasHelpText != current.hasHelpText,
      builder: (context, state) => Row(
        children: [
          const Text("Help text"),
          const Spacer(),
          Switch(
            value: state.hasHelpText,
            onChanged: (value) {
              context.read<TextFieldCubit>().changeHelpText(value);
            },
          )
        ],
      ),
    );
  }

  Widget _buildErrorText() {
    return BlocBuilder<TextFieldCubit, TextFieldState>(
      buildWhen: (previous, current) => previous.hasErrorText != current.hasErrorText,
      builder: (context, state) => Row(
        children: [
          const Text("Error text"),
          const Spacer(),
          Switch(
            value: state.hasErrorText,
            onChanged: (value) {
              context.read<TextFieldCubit>().changeErrorText(value);
            },
          )
        ],
      ),
    );
  }

  Widget _buildCounterText() {
    return BlocBuilder<TextFieldCubit, TextFieldState>(
      buildWhen: (previous, current) => previous.hasCounterText != current.hasCounterText,
      builder: (context, state) => Row(
        children: [
          const Text("Counter text"),
          const Spacer(),
          Switch(
            value: state.hasCounterText,
            onChanged: (value) {
              context.read<TextFieldCubit>().changeCounterText(value);
            },
          )
        ],
      ),
    );
  }

  Widget _buildPrefix() {
    return BlocBuilder<TextFieldCubit, TextFieldState>(
      buildWhen: (previous, current) => previous.hasPrefix != current.hasPrefix,
      builder: (context, state) => Row(
        children: [
          const Text("Prefix"),
          const Spacer(),
          Switch(
            value: state.hasPrefix,
            onChanged: (value) {
              context.read<TextFieldCubit>().changePrefix(value);
            },
          )
        ],
      ),
    );
  }

  Widget _buildSuffix() {
    return BlocBuilder<TextFieldCubit, TextFieldState>(
      buildWhen: (previous, current) => previous.hasSuffix != current.hasSuffix,
      builder: (context, state) => Row(
        children: [
          const Text("Suffix"),
          const Spacer(),
          Switch(
            value: state.hasSuffix,
            onChanged: (value) {
              context.read<TextFieldCubit>().changeSuffix(value);
            },
          )
        ],
      ),
    );
  }

  Widget _buildPrefixIcon() {
    return BlocBuilder<TextFieldCubit, TextFieldState>(
      buildWhen: (previous, current) => previous.hasPrefixIcon != current.hasPrefixIcon,
      builder: (context, state) => Row(
        children: [
          const Text("Prefix icon"),
          const Spacer(),
          Switch(
            value: state.hasPrefixIcon,
            onChanged: (value) {
              context.read<TextFieldCubit>().changePrefixIcon(value);
            },
          )
        ],
      ),
    );
  }
}
