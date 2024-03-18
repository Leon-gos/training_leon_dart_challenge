import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app_new/modules/stack_align/bloc/align_bloc/stack_bloc.dart';
import 'package:gallery_app_new/modules/stack_align/bloc/align_bloc/stack_event.dart';
import 'package:gallery_app_new/modules/stack_align/bloc/align_bloc/stack_state.dart';

class StackAlignScreen extends StatelessWidget {
  const StackAlignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StackBloc, StackState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: const Text("Stack & Align"),
            actions: [
              Container(
                margin: const EdgeInsets.only(right: 16),
                child: const Icon(Icons.account_circle),
              )
            ],
          ),
          body: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Stack(
                  alignment: state.align,
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      color: Colors.blue,
                    ),
                    Container(
                      width: 150,
                      height: 150,
                      color: Colors.green,
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.orange,
                    )
                  ],
                ),
                Row(
                  children: [
                    const Text("Alignment"),
                    const Spacer(),
                    DropdownButton(
                      value: Alignment.center,
                      onChanged:(value) {
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
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        );
      }
    );
  }
}
