import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyAppBarWidget {

  final String title;
  final Widget? leading;
  final List<Widget>? actions;

  const MyAppBarWidget({
    required this.title,
    this.leading,
    this.actions,
  });

  AppBar build(BuildContext context) {
    return AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
        leading: leading ?? IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            context.pop();
          },
        ),
        actions: actions,
      );
  }
}
