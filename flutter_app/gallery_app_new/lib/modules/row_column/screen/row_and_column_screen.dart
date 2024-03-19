import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app_new/modules/row_column/bloc/row_column_cubit.dart';
import 'package:gallery_app_new/modules/row_column/bloc/row_column_state.dart';
import 'package:gallery_app_new/widgets/my_app_bar_widget.dart';

class RowAndColumnScreen extends StatelessWidget {
  RowAndColumnScreen({super.key});

  final List<Widget> items = [
    const Stack(
      alignment: Alignment.center,
      children: [
        Icon(
          Icons.wb_sunny,
          size: 48,
        ),
        Text(
          "A",
          style: TextStyle(fontSize: 16, color: Colors.yellow),
        )
      ],
    ),
    const Stack(
      alignment: Alignment.center,
      children: [
        Icon(
          Icons.wb_sunny,
          size: 64,
        ),
        Text(
          "A",
          style: TextStyle(fontSize: 24, color: Colors.yellow),
        )
      ],
    ),
    const Stack(
      alignment: Alignment.center,
      children: [
        Icon(
          Icons.wb_sunny,
          size: 48,
        ),
        Text(
          "A",
          style: TextStyle(fontSize: 16, color: Colors.yellow),
        )
      ],
    )
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RowColumnCubit, RowColumnState>(
        builder: (context, state) {
      return Scaffold(
        appBar: const MyAppBarWidget(title: "Row & Column").build(context) as AppBar,
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.topLeft,
                child: _buildDemo(state),
              ),
            ),
            const Divider(
              height: 0,
            ),
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildRowRowOrColumn(context, state),
                      _buildRowMainAxisSize(context, state),
                      _buildRowMainAxisAlignment(context, state),
                      _buildRowCrossAxisAlignment(context, state),
                      _buildRowVerticalDirection(context, state),
                      _buildRowTextDirection(context, state),
                      _buildRowTextBaseline(context, state),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }

  Widget _buildDemo(RowColumnState state) {
    return Container(
      color: Colors.yellow,
      child: state.isRow
          ? Row(
              mainAxisSize: state.mainAxisSize,
              mainAxisAlignment: state.mainAxisAlignment,
              crossAxisAlignment: state.crossAxisAlignment,
              verticalDirection: state.verticalDirection,
              textDirection: state.textDirection,
              textBaseline: state.textBaseline,
              children: items,
            )
          : Column(
              mainAxisSize: state.mainAxisSize,
              mainAxisAlignment: state.mainAxisAlignment,
              crossAxisAlignment: state.crossAxisAlignment,
              verticalDirection: state.verticalDirection,
              textDirection: state.textDirection,
              textBaseline: state.textBaseline,
              children: items,
            ),
    );
  }

  Widget _buildRowRowOrColumn(BuildContext context, RowColumnState state) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: RadioListTile(
            title: const Text("Row"),
            value: true,
            groupValue: state.isRow,
            onChanged: (value) {
              context.read<RowColumnCubit>().changeRowColumnType(value!);
            },
          ),
        ),
        Expanded(
          flex: 1,
          child: RadioListTile(
            title: const Text("Column"),
            value: false,
            groupValue: state.isRow,
            onChanged: (value) {
              context.read<RowColumnCubit>().changeRowColumnType(value!);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildRowMainAxisSize(BuildContext context, RowColumnState state) {
    return Row(
      children: [
        const Text("mainAxisSize"),
        const Spacer(),
        DropdownButton(
          value: state.mainAxisSize,
          onChanged: (value) {
            context.read<RowColumnCubit>().changeMainAxisSize(value!);
          },
          items: const [
            DropdownMenuItem(
              value: MainAxisSize.max,
              child: Text("max"),
            ),
            DropdownMenuItem(
              value: MainAxisSize.min,
              child: Text("min"),
            ),
          ],
        )
      ],
    );
  }

  Widget _buildRowMainAxisAlignment(
      BuildContext context, RowColumnState state) {
    return Row(
      children: [
        const Text("mainAxisAlignment"),
        const Spacer(),
        DropdownButton(
          value: state.mainAxisAlignment,
          onChanged: (value) {
            context.read<RowColumnCubit>().changeMainAxisAlignment(value!);
          },
          items: const [
            DropdownMenuItem(
              value: MainAxisAlignment.start,
              child: Text("start"),
            ),
            DropdownMenuItem(
              value: MainAxisAlignment.end,
              child: Text("end"),
            ),
            DropdownMenuItem(
              value: MainAxisAlignment.center,
              child: Text("center"),
            ),
            DropdownMenuItem(
              value: MainAxisAlignment.spaceBetween,
              child: Text("spaceBetween"),
            ),
            DropdownMenuItem(
              value: MainAxisAlignment.spaceAround,
              child: Text("spaceAround"),
            ),
            DropdownMenuItem(
              value: MainAxisAlignment.spaceEvenly,
              child: Text("spaceEvenly"),
            ),
          ],
        )
      ],
    );
  }

  Widget _buildRowCrossAxisAlignment(
      BuildContext context, RowColumnState state) {
    return Row(
      children: [
        const Text("crossAxisAlignment"),
        const Spacer(),
        DropdownButton(
          value: state.crossAxisAlignment,
          onChanged: (value) {
            context.read<RowColumnCubit>().changeCrossAxisAlignment(value!);
          },
          items: const [
            DropdownMenuItem(
                value: CrossAxisAlignment.start, child: Text("start")),
            DropdownMenuItem(value: CrossAxisAlignment.end, child: Text("end")),
            DropdownMenuItem(
                value: CrossAxisAlignment.center, child: Text("center")),
            DropdownMenuItem(
                value: CrossAxisAlignment.stretch, child: Text("stretch")),
            DropdownMenuItem(
                value: CrossAxisAlignment.baseline, child: Text("baseline")),
          ],
        )
      ],
    );
  }

  Widget _buildRowVerticalDirection(
      BuildContext context, RowColumnState state) {
    return Row(
      children: [
        const Text("verticalDirection"),
        const Spacer(),
        DropdownButton(
          value: state.verticalDirection,
          onChanged: (value) {
            context.read<RowColumnCubit>().changeVerticalDirection(value!);
          },
          items: const [
            DropdownMenuItem(
                value: VerticalDirection.down, child: Text("down")),
            DropdownMenuItem(value: VerticalDirection.up, child: Text("up")),
          ],
        )
      ],
    );
  }

  Widget _buildRowTextDirection(BuildContext context, RowColumnState state) {
    return Row(
      children: [
        const Text("textDirection"),
        const Spacer(),
        DropdownButton(
          value: state.textDirection,
          onChanged: (value) {
            context.read<RowColumnCubit>().changeTextDirection(value!);
          },
          items: const [
            DropdownMenuItem(value: TextDirection.ltr, child: Text("ltr")),
            DropdownMenuItem(value: TextDirection.rtl, child: Text("rtl")),
          ],
        )
      ],
    );
  }

  Widget _buildRowTextBaseline(BuildContext context, RowColumnState state) {
    return Row(
      children: [
        const Text("textBaseline"),
        const Spacer(),
        DropdownButton(
          value: state.textBaseline,
          onChanged: (value) {
            context.read<RowColumnCubit>().changeTextBaseline(value!);
          },
          items: const [
            DropdownMenuItem(
                value: TextBaseline.alphabetic, child: Text("alphabetic")),
            DropdownMenuItem(
                value: TextBaseline.ideographic, child: Text("ideographic")),
          ],
        )
      ],
    );
  }
}
