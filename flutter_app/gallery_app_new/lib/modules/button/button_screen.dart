import 'package:flutter/material.dart';
import 'package:gallery_app_new/widgets/my_app_bar_widget.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBarWidget(
        title: "Button view",
      ),
      body: Column(
        children: [
          DropdownButton(
            isExpanded: true,
            value: 1,
            items: const [
              DropdownMenuItem(value: 1, child: Text("Dropdown")),
              DropdownMenuItem(value: 2, child: Text("Item 2")),
              DropdownMenuItem(value: 3, child: Text("Item 3")),
            ],
            onChanged: (value) {},
          )
        ],
      ),
    );
  }
}
