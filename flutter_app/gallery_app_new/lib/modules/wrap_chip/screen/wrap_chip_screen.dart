import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app_new/modules/wrap_chip/bloc/wrap_chip_cubit.dart';
import 'package:gallery_app_new/modules/wrap_chip/bloc/wrap_chip_state.dart';
import 'package:gallery_app_new/widgets/my_app_bar_widget.dart';

class WrapChipScreen extends StatelessWidget {
  const WrapChipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBarWidget(title: "Wrap text"),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 6,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: _buildDemo(),
            ),
          ),
          const Divider(
            height: 0,
          ),
          Expanded(
            flex: 4,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(flex: 1, child: _buildElevation()),
                        Expanded(flex: 1, child: _buildAvatar())
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(flex: 1, child: _buildDeleteIcon()),
                        Expanded(flex: 1, child: _buildSpacing())
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(flex: 1, child: _buildRunSpacing()),
                        Expanded(flex: 1, child: _buildShapeType())
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildDemo() {
    return BlocBuilder<WrapChipCubit, WrapChipState>(
      builder: (context, state) {
        var spacing = state.hasSpacing ? 16.0 : 0.0;
        var runSpacing = state.hasRunSpacing ? 16.0 : 0.0;

        var elevation = state.hasElevation ? 4.0 : 0.0;
        var avatar = state.hasAvatar
            ? const Icon(
                Icons.account_circle_outlined,
              )
            : null;
        var delete = state.hasDeleteIcon ? () {} : null;
        var shape = state.shape.shape;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Chip chip",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            _buildDemoChipChip(
              spacing,
              runSpacing,
              elevation,
              avatar,
              delete,
              shape,
            ),
            const Text(
              "Choice chip",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            _buildDemoChoiceChip(
              spacing,
              runSpacing,
              elevation,
              avatar,
              delete,
              shape,
            ),
            const Text(
              "Input chip",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            _buildDemoInputChip(
              spacing,
              runSpacing,
              elevation,
              avatar,
              delete,
              shape,
            ),
          ],
        );
      },
    );
  }

  Widget _buildDemoChipChip(
    double spacing,
    double runSpacing,
    double elevation,
    Widget? avatar,
    Function()? delete,
    OutlinedBorder? shape,
  ) {
    return Wrap(
      spacing: spacing,
      runSpacing: runSpacing,
      children: [
        Chip(
          label: const Text("Chip"),
          elevation: elevation,
          avatar: avatar,
          onDeleted: delete,
          shape: shape,
        ),
        Chip(
          label: const Text("ActionChip"),
          elevation: elevation,
          avatar: avatar,
          onDeleted: delete,
          shape: shape,
        ),
        Chip(
          label: const Text("RawChip"),
          elevation: elevation,
          avatar: avatar,
          onDeleted: delete,
          shape: shape,
        ),
      ],
    );
  }

  _buildDemoChoiceChip(
    double spacing,
    double runSpacing,
    double elevation,
    Widget? avatar,
    Function()? delete,
    OutlinedBorder? shape,
  ) {
    return Wrap(
      spacing: spacing,
      runSpacing: runSpacing,
      children: [
        ChoiceChip(
          label: const Text("Disable"),
          selected: false,
          disabledColor: Colors.black12,
          elevation: elevation,
          avatar: avatar,
          shape: shape,
        ),
        ChoiceChip(
          label: const Text("Small"),
          selected: true,
          disabledColor: Colors.black12,
          elevation: elevation,
          avatar: avatar,
          shape: shape,
          onSelected: (value) {},
        ),
        ChoiceChip(
          label: const Text("Large"),
          selected: false,
          disabledColor: Colors.black12,
          elevation: elevation,
          avatar: avatar,
          shape: shape,
          onSelected: (value) {},
        ),
      ],
    );
  }

  _buildDemoInputChip(
    double spacing,
    double runSpacing,
    double elevation,
    Widget? avatar,
    Function()? delete,
    OutlinedBorder? shape,
  ) {
    return Wrap(
      spacing: spacing,
      runSpacing: runSpacing,
      children: [
        InputChip(
          label: const Text("Disable"),
          selected: false,
          elevation: elevation,
          avatar: avatar,
          onDeleted: delete,
          shape: shape,
          disabledColor: Colors.black12,
        ),
        InputChip(
          label: const Text("iOS"),
          selected: false,
          elevation: elevation,
          avatar: avatar,
          onDeleted: delete,
          shape: shape,
          onSelected: (value) {},
        ),
        InputChip(
          label: const Text("Android"),
          selected: true,
          elevation: elevation,
          avatar: avatar,
          onDeleted: delete,
          shape: shape,
          onSelected: (value) {},
        ),
      ],
    );
  }

  Widget _buildElevation() {
    return BlocBuilder<WrapChipCubit, WrapChipState>(
      buildWhen: (previous, current) =>
          previous.hasElevation != current.hasElevation,
      builder: (context, state) {
        return Row(
          children: [
            const Text("Elevation"),
            const Spacer(),
            Switch(
              value: state.hasElevation,
              onChanged: (value) {
                context.read<WrapChipCubit>().changeElevation(value);
              },
            )
          ],
        );
      },
    );
  }

  Widget _buildAvatar() {
    return BlocBuilder<WrapChipCubit, WrapChipState>(
      buildWhen: (previous, current) => previous.hasAvatar != current.hasAvatar,
      builder: (context, state) {
        return Row(
          children: [
            const Text("Avatar"),
            const Spacer(),
            Switch(
              value: state.hasAvatar,
              onChanged: (value) {
                context.read<WrapChipCubit>().changeAvatar(value);
              },
            )
          ],
        );
      },
    );
  }

  Widget _buildDeleteIcon() {
    return BlocBuilder<WrapChipCubit, WrapChipState>(
      buildWhen: (previous, current) =>
          previous.hasDeleteIcon != current.hasDeleteIcon,
      builder: (context, state) {
        return Row(
          children: [
            const Text("Delete icon"),
            const Spacer(),
            Switch(
              value: state.hasDeleteIcon,
              onChanged: (value) {
                context.read<WrapChipCubit>().changeDeleteIcon(value);
              },
            )
          ],
        );
      },
    );
  }

  Widget _buildSpacing() {
    return BlocBuilder<WrapChipCubit, WrapChipState>(
      buildWhen: (previous, current) =>
          previous.hasSpacing != current.hasSpacing,
      builder: (context, state) {
        return Row(
          children: [
            const Text("Spacing"),
            const Spacer(),
            Switch(
              value: state.hasSpacing,
              onChanged: (value) {
                context.read<WrapChipCubit>().changeSpacing(value);
              },
            )
          ],
        );
      },
    );
  }

  Widget _buildRunSpacing() {
    return BlocBuilder<WrapChipCubit, WrapChipState>(
      buildWhen: (previous, current) =>
          previous.hasRunSpacing != current.hasRunSpacing,
      builder: (context, state) {
        return Row(
          children: [
            const Text("Run spacing"),
            const Spacer(),
            Switch(
              value: state.hasRunSpacing,
              onChanged: (value) {
                context.read<WrapChipCubit>().changeRunSpacing(value);
              },
            )
          ],
        );
      },
    );
  }

  Widget _buildShapeType() {
    return BlocBuilder<WrapChipCubit, WrapChipState>(
      buildWhen: (previous, current) => previous.shape != current.shape,
      builder: (context, state) {
        return Row(
          children: [
            DropdownButton(
              value: state.shape,
              items: const [
                DropdownMenuItem(
                  value: MyChipShape.normal,
                  child: Text("Normal"),
                ),
                DropdownMenuItem(
                  value: MyChipShape.roundedRectangleBorder,
                  child: Text("roundedRectangle"),
                ),
                DropdownMenuItem(
                  value: MyChipShape.beveledRectangleBorder,
                  child: Text("beveledRectangle"),
                ),
                DropdownMenuItem(
                  value: MyChipShape.circleBorder,
                  child: Text("circle"),
                ),
                DropdownMenuItem(
                  value: MyChipShape.continuousRectangleBorder,
                  child: Text("continuousRectangle"),
                ),
                DropdownMenuItem(
                  value: MyChipShape.stadiumBorder,
                  child: Text("stadium"),
                ),
              ],
              onChanged: (value) {
                context.read<WrapChipCubit>().changeChipShape(value!);
              },
            )
          ],
        );
      },
    );
  }
}
