import 'package:flutter/material.dart';
import 'package:gallery_app_new/widgets/my_app_bar_widget.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBarWidget(title: "Container view").build(context),
      body: Column(
        children: [
          Expanded(
            flex: 6,
            child: Center(
              child: Container(
                width: 300,
                height: 300,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.zero,
                  color: Colors.blue,
                  boxShadow: [],
                  backgroundBlendMode: BlendMode.src,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.green,
            ),
          )
        ],
      ),
    );
  }
}
