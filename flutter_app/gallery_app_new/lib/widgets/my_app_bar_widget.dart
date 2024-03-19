import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget? leading;
  final List<Widget>? actions;

  const MyAppBarWidget({
    super.key,
    required this.title,
    this.leading,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Text(title),
      leading: leading ??
          IconButton(
            icon: const Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              context.pop();
            },
          ),
      actions: actions,
    );
  }
  
  @override
  Size get preferredSize =>  const Size.fromHeight(kToolbarHeight);
}
