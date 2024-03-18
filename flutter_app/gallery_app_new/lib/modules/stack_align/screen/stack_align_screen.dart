import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app_new/modules/stack_align/bloc/align_bloc/stack_bloc.dart';
import 'package:gallery_app_new/modules/stack_align/bloc/align_bloc/stack_event.dart';
import 'package:gallery_app_new/modules/stack_align/bloc/align_bloc/stack_state.dart';
import 'package:gallery_app_new/widgets/my_app_bar_widget.dart';

class StackAlignScreen extends StatelessWidget {
  const StackAlignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StackBloc, StackState>(builder: (context, state) {
      return Scaffold(
        appBar: const MyAppBarWidget(title: "Stack & Align",).build(context),
        body: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 200,
                height: 300,
                child: Stack(
                  alignment: state.alignment,
                  textDirection: state.textDirection,
                  fit: state.stackFit,
                  clipBehavior: state.clip,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 200,
                          height: 200,
                          margin: const EdgeInsets.symmetric(vertical: 50),
                          color: Colors.blue,
                        ),
                        Container(
                          width: 150,
                          height: 150,
                          color: Colors.green,
                        ),
                      ],
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.orange,
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  const Text("Alignment"),
                  const Spacer(),
                  DropdownButton(
                    value: state.alignment,
                    onChanged: (value) {
                      context.read<StackBloc>().add(AlignChange(align: value!));
                    },
                    items: const [
                      DropdownMenuItem(
                        value: Alignment.center,
                        child: Text("center"),
                      ),
                      DropdownMenuItem(
                        value: Alignment.centerLeft,
                        child: Text("centerLeft"),
                      ),
                      DropdownMenuItem(
                        value: Alignment.centerRight,
                        child: Text("centerRight"),
                      ),
                      DropdownMenuItem(
                        value: Alignment.topCenter,
                        child: Text("topCenter"),
                      ),
                      DropdownMenuItem(
                        value: Alignment.topLeft,
                        child: Text("topLeft"),
                      ),
                      DropdownMenuItem(
                        value: Alignment.topRight,
                        child: Text("topRight"),
                      ),
                      DropdownMenuItem(
                        value: Alignment.bottomCenter,
                        child: Text("bottomCenter"),
                      ),
                      DropdownMenuItem(
                        value: Alignment.bottomLeft,
                        child: Text("bottomLeft"),
                      ),
                      DropdownMenuItem(
                        value: Alignment.bottomRight,
                        child: Text("bottomRight"),
                      ),
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  const Text("Text direction"),
                  const Spacer(),
                  DropdownButton(
                    value: state.textDirection,
                    onChanged: (value) {
                      context
                          .read<StackBloc>()
                          .add(TextDirectionChange(textDirection: value!));
                    },
                    items: const [
                      DropdownMenuItem(
                        value: TextDirection.ltr,
                        child: Text("ltr"),
                      ),
                      DropdownMenuItem(
                        value: TextDirection.rtl,
                        child: Text("rtl"),
                      )
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  const Text("StackFit"),
                  const Spacer(),
                  DropdownButton(
                    onChanged: (value) {
                      context
                          .read<StackBloc>()
                          .add(StackFitChange(stackFit: value!));
                    },
                    value: state.stackFit,
                    items: const [
                      DropdownMenuItem(
                          value: StackFit.expand, child: Text("expand")),
                      DropdownMenuItem(
                          value: StackFit.loose, child: Text("loose")),
                      DropdownMenuItem(
                          value: StackFit.passthrough,
                          child: Text("passthrough")),
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  const Text("Clip"),
                  const Spacer(),
                  DropdownButton(
                    onChanged: (value) {
                      context
                          .read<StackBloc>()
                          .add(StackClipChange(clip: value!));
                    },
                    value: state.clip,
                    items: const [
                      DropdownMenuItem(value: Clip.none, child: Text("none")),
                      DropdownMenuItem(
                          value: Clip.hardEdge, child: Text("hardEdge")),
                      DropdownMenuItem(
                          value: Clip.antiAlias, child: Text("antiAlias")),
                      DropdownMenuItem(
                          value: Clip.antiAliasWithSaveLayer,
                          child: Text("antiAliasWithSaveLayer")),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      );
    });
  }
}
