import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app_new/modules/bottom_appbar/bloc/bottom_appbar_cubit.dart';
import 'package:gallery_app_new/modules/bottom_appbar/bloc/bottom_appbar_state.dart';
import 'package:gallery_app_new/widgets/my_app_bar_widget.dart';

class BottomAppbarScreen extends StatelessWidget {
  const BottomAppbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomAppbarCubit, BottomAppbarState>(
      buildWhen: (previous, current) =>
          previous.floatButtonLocation != current.floatButtonLocation,
      builder: (context, state) {
        return Scaffold(
          appBar: const MyAppBarWidget(title: "Bottom app bar view"),
          floatingActionButtonLocation: state.floatButtonLocation,
          floatingActionButton: _buildFloatActionButton(),
          bottomNavigationBar: _buildBottomNavigationBar(),
          body: Column(
            children: [
              _buildRowFloatActionButton(),
              _buildRowNotch(),
              const Divider(),
              const Text(
                "Float action button position",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              _buildFloatActionButtonPosition(),
            ],
          ),
        );
      },
    );
  }

  Widget _buildBottomNavigationBar() {
    return BlocBuilder<BottomAppbarCubit, BottomAppbarState>(
      builder: (context, state) {
        return BottomAppBar(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          height: 60,
          color: Colors.white,
          shape: const CircularNotchedRectangle(),
          notchMargin: state.hasNotch && state.hasFloatButton ? 16 : 4,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: state.isHasDockFloatButton()
                ? MainAxisAlignment.start
                : MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(
                  Icons.favorite,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildFloatActionButton() {
    return BlocBuilder<BottomAppbarCubit, BottomAppbarState>(
      buildWhen: (previous, current) =>
          previous.hasFloatButton != current.hasFloatButton,
      builder: (context, state) {
        return state.hasFloatButton
            ? FloatingActionButton(
                onPressed: () {},
                backgroundColor: Colors.blue,
                child: const Icon(Icons.add),
              )
            : const SizedBox();
      },
    );
  }

  Widget _buildRowFloatActionButton() {
    return BlocBuilder<BottomAppbarCubit, BottomAppbarState>(
      builder: (context, state) {
        return Row(
          children: [
            const Text("Float action button"),
            const Spacer(),
            Switch(
              value: state.hasFloatButton,
              onChanged: (value) {
                context.read<BottomAppbarCubit>().changeFloatButton(value);
              },
            )
          ],
        );
      },
    );
  }

  Widget _buildRowNotch() {
    return BlocBuilder<BottomAppbarCubit, BottomAppbarState>(
      builder: (context, state) {
        return Row(
          children: [
            const Text("Notch"),
            const Spacer(),
            Switch(
              value: state.hasNotch,
              onChanged: (value) {
                context.read<BottomAppbarCubit>().changeNotch(value);
              },
            )
          ],
        );
      },
    );
  }

  Widget _buildFloatActionButtonPosition() {
    return BlocBuilder<BottomAppbarCubit, BottomAppbarState>(
      builder: (context, state) {
        return Column(
          children: [
            RadioListTile(
              value: FloatingActionButtonLocation.endDocked,
              groupValue: state.floatButtonLocation,
              title: const Text("endDocked"),
              onChanged: (value) {
                context
                    .read<BottomAppbarCubit>()
                    .changeFloatButtonLocation(value!);
              },
            ),
            RadioListTile(
              value: FloatingActionButtonLocation.centerDocked,
              groupValue: state.floatButtonLocation,
              title: const Text("centerDocked"),
              onChanged: (value) {
                context
                    .read<BottomAppbarCubit>()
                    .changeFloatButtonLocation(value!);
              },
            ),
            RadioListTile(
              value: FloatingActionButtonLocation.endFloat,
              groupValue: state.floatButtonLocation,
              title: const Text("endFloat"),
              onChanged: (value) {
                context
                    .read<BottomAppbarCubit>()
                    .changeFloatButtonLocation(value!);
              },
            ),
            RadioListTile(
              value: FloatingActionButtonLocation.centerFloat,
              groupValue: state.floatButtonLocation,
              title: const Text("centerFloat"),
              onChanged: (value) {
                context
                    .read<BottomAppbarCubit>()
                    .changeFloatButtonLocation(value!);
              },
            ),
          ],
        );
      },
    );
  }
}
