import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app_new/modules/row_column/bloc/row_column_bloc.dart';
import 'package:gallery_app_new/modules/row_column/bloc/row_column_event.dart';
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

  static const List<String> options = ["row", "column"];
  var groupValue = options[0];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RowColumnBloc, RowColumnState>(
        builder: (context, state) {
      return Scaffold(
        appBar: const MyAppBarWidget(title: "Row & Column").build(context),
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
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
                ),
              ),
            ),
            const Divider(
              height: 0,
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: RadioListTile(
                            title: const Text("Row"),
                            value: true,
                            groupValue: state.isRow,
                            onChanged: (value) {
                              context
                                  .read<RowColumnBloc>()
                                  .add(RowColumnTypeChange(isRow: value!));
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
                              context
                                  .read<RowColumnBloc>()
                                  .add(RowColumnTypeChange(isRow: value!));
                            },
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Text("mainAxisSize"),
                        const Spacer(),
                        DropdownButton(
                          value: state.mainAxisSize,
                          onChanged: (value) {
                            context.read<RowColumnBloc>().add(
                                RowColumnMainAsixSizeChange(
                                    mainAxisSize: value!));
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
                    ),
                    Row(
                      children: [
                        const Text("mainAxisAlignment"),
                        const Spacer(),
                        DropdownButton(
                          value: state.mainAxisAlignment,
                          onChanged: (value) {
                            context.read<RowColumnBloc>().add(
                                RowColumnMainAxisAlignmentChange(
                                    mainAxisAlignment: value!));
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
                    ),
                    Row(
                      children: [
                        const Text("crossAxisAlignment"),
                        const Spacer(),
                        DropdownButton(
                          value: state.crossAxisAlignment,
                          onChanged: (value) {
                            context.read<RowColumnBloc>().add(
                                RowColumnCrossAxisAlignmentChange(
                                    crossAxisAlignment: value!));
                          },
                          items: const [
                            DropdownMenuItem(
                                value: CrossAxisAlignment.start,
                                child: Text("start")),
                            DropdownMenuItem(
                                value: CrossAxisAlignment.end,
                                child: Text("end")),
                            DropdownMenuItem(
                                value: CrossAxisAlignment.center,
                                child: Text("center")),
                            DropdownMenuItem(
                                value: CrossAxisAlignment.stretch,
                                child: Text("stretch")),
                            DropdownMenuItem(
                                value: CrossAxisAlignment.baseline,
                                child: Text("baseline")),
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text("verticalDirection"),
                        Spacer(),
                        DropdownButton(
                          onChanged: (value) {},
                          items: [],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text("textDirection"),
                        Spacer(),
                        DropdownButton(
                          onChanged: (value) {},
                          items: [],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text("textBaseline"),
                        Spacer(),
                        DropdownButton(
                          onChanged: (value) {},
                          items: [],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}