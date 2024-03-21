import 'package:flutter/material.dart';
import 'package:gallery_app_new/widgets/my_app_bar_widget.dart';

class CustomBoxShapeScreen extends StatelessWidget {
  const CustomBoxShapeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBarWidget(title: "Custom box shape"),
      body: Column(

      ),
    );
  }

}