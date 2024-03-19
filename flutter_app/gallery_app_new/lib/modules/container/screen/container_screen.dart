import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app_new/modules/container/bloc/container_cubit.dart';
import 'package:gallery_app_new/modules/container/bloc/container_state.dart';
import 'package:gallery_app_new/widgets/my_app_bar_widget.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBarWidget(title: "Container view").build(context)
          as AppBar,
      body: Column(
        children: [
          Expanded(
            flex: 6,
            child: Center(
              child: BlocBuilder<ContainerCubit, ContainerState>(
                builder: (context, state) => _buildDemo(state),
              ),
            ),
          ),
          const Divider(
            height: 0,
          ),
          Expanded(
            flex: 4,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    BlocBuilder<ContainerCubit, ContainerState>(
                      buildWhen: (previous, current) =>
                          previous.hasBorder != current.hasBorder,
                      builder: (context, state) =>
                          _buildRowBorder(context, state),
                    ),
                    BlocBuilder<ContainerCubit, ContainerState>(
                      buildWhen: (previous, current) =>
                          previous.borderRadius != current.borderRadius,
                      builder: (context, state) =>
                          _buildRowBorderRadius(context, state),
                    ),
                    BlocBuilder<ContainerCubit, ContainerState>(
                      buildWhen: (previous, current) =>
                          previous.hasBoxShadow != current.hasBoxShadow,
                      builder: (context, state) =>
                          _buildRowBoxShadow(context, state),
                    ),
                    BlocBuilder<ContainerCubit, ContainerState>(
                      buildWhen: (previous, current) =>
                          previous.background != current.background,
                      builder: (context, state) =>
                          _buildRowBackground(context, state),
                    ),
                    BlocBuilder<ContainerCubit, ContainerState>(
                      buildWhen: (previous, current) =>
                          previous.blendMode != current.blendMode,
                      builder: (context, state) =>
                          _buildRowBlendMode(context, state),
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

  Widget _buildDemo(ContainerState state) {
    return Container(
      width: 300,
      height: 300,
      decoration: BoxDecoration(
        border: state.hasBorder ? Border.all(width: 5) : null,
        borderRadius:
            BorderRadius.all(Radius.circular(state.borderRadius.value)),
        color: state.background,
        boxShadow: state.hasBoxShadow
            ? [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ]
            : null,
        backgroundBlendMode: state.blendMode,
      ),
    );
  }

  Widget _buildRowBorder(BuildContext context, ContainerState state) {
    return Row(
      children: [
        const Text("Border"),
        const Spacer(),
        Switch(
          value: state.hasBorder,
          onChanged: (value) {
            context.read<ContainerCubit>().changeBorder(value);
          },
        )
      ],
    );
  }

  Widget _buildRowBorderRadius(BuildContext context, ContainerState state) {
    return Row(
      children: [
        const Text("Border radius"),
        const Spacer(),
        DropdownButton(
          value: state.borderRadius,
          onChanged: (value) {
            context.read<ContainerCubit>().changeBorderRadius(value!);
          },
          items: const [
            DropdownMenuItem(
                value: BorderRadiusType.borderNone, child: Text("none")),
            DropdownMenuItem(
                value: BorderRadiusType.border8, child: Text("border8")),
            DropdownMenuItem(
                value: BorderRadiusType.border16, child: Text("border16")),
            DropdownMenuItem(
                value: BorderRadiusType.border32, child: Text("border32")),
          ],
        )
      ],
    );
  }

  Widget _buildRowBoxShadow(BuildContext context, ContainerState state) {
    return Row(
      children: [
        const Text("Box shadow"),
        const Spacer(),
        Switch(
          value: state.hasBoxShadow,
          onChanged: (value) {
            context.read<ContainerCubit>().changeBoxShadow(value);
          },
        )
      ],
    );
  }

  Widget _buildRowBackground(BuildContext context, ContainerState state) {
    return Row(
      children: [
        const Text("Background"),
        const Spacer(),
        DropdownButton(
          value: state.background,
          onChanged: (value) {
            context.read<ContainerCubit>().changeBackgroundColor(value!);
          },
          items: const [
            DropdownMenuItem(value: Colors.blue, child: Text("blue")),
            DropdownMenuItem(value: Colors.red, child: Text("red")),
            DropdownMenuItem(value: Colors.orange, child: Text("orange")),
            DropdownMenuItem(value: Colors.green, child: Text("green")),
          ],
        )
      ],
    );
  }

  Widget _buildRowBlendMode(BuildContext context, ContainerState state) {
    return Row(
      children: [
        const Text("Blend mode"),
        const Spacer(),
        DropdownButton(
          value: state.blendMode,
          onChanged: (value) {
            context.read<ContainerCubit>().changeBackgroundBlendMode(value!);
          },
          items: const [
            DropdownMenuItem(value: BlendMode.src, child: Text("src")),
            DropdownMenuItem(value: BlendMode.clear, child: Text("clear")),
            DropdownMenuItem(value: BlendMode.color, child: Text("color")),
            DropdownMenuItem(
                value: BlendMode.colorBurn, child: Text("colorBurn")),
            DropdownMenuItem(
                value: BlendMode.colorDodge, child: Text("colorDodge")),
            DropdownMenuItem(value: BlendMode.darken, child: Text("darken")),
            DropdownMenuItem(
                value: BlendMode.difference, child: Text("difference")),
            DropdownMenuItem(value: BlendMode.dst, child: Text("dst")),
            DropdownMenuItem(value: BlendMode.dstATop, child: Text("dstATop")),
            DropdownMenuItem(value: BlendMode.dstIn, child: Text("dstIn")),
            DropdownMenuItem(value: BlendMode.dstOut, child: Text("dstOut")),
            DropdownMenuItem(value: BlendMode.dstOver, child: Text("dstOver")),
            DropdownMenuItem(
                value: BlendMode.exclusion, child: Text("exclusion")),
            DropdownMenuItem(
                value: BlendMode.hardLight, child: Text("hardLight")),
            DropdownMenuItem(value: BlendMode.hue, child: Text("hue")),
            DropdownMenuItem(value: BlendMode.lighten, child: Text("lighten")),
            DropdownMenuItem(
                value: BlendMode.luminosity, child: Text("luminosity")),
            DropdownMenuItem(
                value: BlendMode.modulate, child: Text("modulate")),
            DropdownMenuItem(
                value: BlendMode.multiply, child: Text("multiply")),
            DropdownMenuItem(value: BlendMode.overlay, child: Text("overlay")),
            DropdownMenuItem(value: BlendMode.plus, child: Text("plus")),
            DropdownMenuItem(
                value: BlendMode.saturation, child: Text("saturation")),
            DropdownMenuItem(value: BlendMode.screen, child: Text("screen")),
            DropdownMenuItem(
                value: BlendMode.softLight, child: Text("softLight")),
            DropdownMenuItem(value: BlendMode.srcATop, child: Text("srcATop")),
            DropdownMenuItem(value: BlendMode.srcIn, child: Text("srcIn")),
            DropdownMenuItem(value: BlendMode.srcOut, child: Text("srcOut")),
            DropdownMenuItem(value: BlendMode.srcOver, child: Text("srcOver")),
            DropdownMenuItem(value: BlendMode.xor, child: Text("xor")),
          ],
        )
      ],
    );
  }
}
