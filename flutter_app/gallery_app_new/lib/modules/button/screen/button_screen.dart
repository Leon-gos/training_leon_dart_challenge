import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app_new/modules/button/bloc/button_cubit.dart';
import 'package:gallery_app_new/modules/button/bloc/button_state.dart';
import 'package:gallery_app_new/modules/button/widget/custom_paint_button.dart';
import 'package:gallery_app_new/modules/button/widget/my_optional_button_widget.dart';
import 'package:gallery_app_new/widgets/my_app_bar_widget.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBarWidget(
        title: "Button view",
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildDropdownButton(),
              _buildDropdownFormField(),
              _buildIconButton(),
              _buildElevatedButton(),
              _buildElevatedButtonIcon(),
              _buildTextButton(),
              _buildTextButtonIcon(),
              _buildOutlineButton(),
              _buildOutlineButtonIcon(),
              _buildCupertinoButton(),
              _buildMaterialButton(),
              _buildRawMaterialButton(),
              _buildOptionButton(),
              _buildFloatButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDropdownButton() {
    return BlocBuilder<ButtonCubit, ButtonState>(
      buildWhen: (previous, current) =>
          previous.dropdownButtonValue != current.dropdownButtonValue,
      builder: (context, state) {
        return DropdownButton(
          value: state.dropdownButtonValue,
          onChanged: (value) {
            context
                .read<ButtonCubit>()
                .changeDropdownButtonSelectedItem(value!);
          },
          items: const [
            DropdownMenuItem(value: 0, child: Text("Dropdown")),
            DropdownMenuItem(value: 1, child: Text("Item 1")),
            DropdownMenuItem(value: 2, child: Text("Item 2")),
          ],
        );
      },
    );
  }

  Widget _buildDropdownFormField() {
    return BlocBuilder<ButtonCubit, ButtonState>(
      builder: (context, state) => DropdownButtonFormField(
        value: state.dropdownFormFieldValue,
        onChanged: (value) {
          context
              .read<ButtonCubit>()
              .changeDropdownFormFieldSelectedItem(value!);
        },
        items: const [
          DropdownMenuItem(value: 0, child: Text("Dropdown")),
          DropdownMenuItem(value: 1, child: Text("Item 1")),
          DropdownMenuItem(value: 2, child: Text("Item 2")),
        ],
      ),
    );
  }

  Widget _buildIconButton() {
    return IconButton(
      onPressed: () {},
      icon: const Icon(Icons.add_box_outlined),
    );
  }

  Widget _buildElevatedButton() {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        padding: const EdgeInsets.all(8),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      child: const Text("Elevated button"),
    );
  }

  Widget _buildElevatedButtonIcon() {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: const Icon(Icons.account_circle),
      label: const Text("Elevated button icon"),
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        padding: const EdgeInsets.all(8),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
    );
  }

  Widget _buildTextButton() {
    return TextButton(
      onPressed: () {},
      child: const Text("Text button"),
    );
  }

  Widget _buildTextButtonIcon() {
    return TextButton.icon(
      onPressed: () {},
      icon: const Icon(Icons.account_circle),
      label: const Text("Text button icon"),
    );
  }

  Widget _buildOutlineButton() {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        minimumSize: const Size(double.infinity, 0),
        padding: const EdgeInsets.all(8),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
      ),
      child: const Text("Outline button"),
    );
  }

  Widget _buildOutlineButtonIcon() {
    return OutlinedButton.icon(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        minimumSize: const Size(double.infinity, 0),
        padding: const EdgeInsets.all(8),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
      ),
      label: const Text("Outline button"),
      icon: const Icon(Icons.account_circle_outlined),
    );
  }

  Widget _buildCupertinoButton() {
    return SizedBox(
      width: double.infinity,
      child: CupertinoButton(
        onPressed: () {},
        color: Colors.amber,
        child: const Text("Cupertino button"),
      ),
    );
  }

  Widget _buildMaterialButton() {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      child: CustomPaint(
        foregroundPainter: CustomPaintButton(fillColor: Colors.white),
        child: MaterialButton(
          onPressed: () {},
          minWidth: double.infinity,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          padding: const EdgeInsets.all(8),
          color: Colors.blue,
          child: const Text(
            "Material button",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget _buildRawMaterialButton() {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      width: double.infinity,
      child: CustomPaint(
        foregroundPainter: CustomPaintButton(fillColor: Colors.white),
        child: RawMaterialButton(
          onPressed: () {},
          // minWidth: double.infinity,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          padding: const EdgeInsets.all(8),
          fillColor: Colors.blue,
          child: const Text(
            "Raw material button",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget _buildOptionButton() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        MyOptionalButtonWidget(
          items: const {
            "Option 1": 1,
            "Option 2": 2,
            "Option 3": 3,
          },
          onItemSelected: (value) {
            print("Selected value: $value");
          },
        )
      ],
    );
  }

  Widget _buildFloatButton() {
    return FloatingActionButton(
      onPressed: () {},
      shape: const CircleBorder(),
      child: const Icon(Icons.add),
    );
  }
}
