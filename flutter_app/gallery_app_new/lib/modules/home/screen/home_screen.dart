import 'package:flutter/material.dart';
import 'package:gallery_app_new/widgets/home_list_tile_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("My widget"),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16),
            child: const Icon(Icons.account_circle),
          )
        ],
      ),
      body: ListView(
        children: const [
          HomeListTileWidget(
              title: "Cupertino",
              subtitle:
                  "Beautiful and high-fidety widgets for iOS design language",
              leadingIcon: Icons.phone_android),
          HomeListTileWidget(
              title: "Typography",
              subtitle: "All of the predefinded text style",
              leadingIcon: Icons.text_fields),
          HomeListTileWidget(
              title: "Bottom app bar",
              subtitle: "Bottom application bar",
              leadingIcon: Icons.more_vert_rounded),
          HomeListTileWidget(
              title: "Button",
              subtitle:
                  "RaisedButton, FlatButton, DropdownButton, FloatingActionButton, IconButton, InkWell, RawMaterialButton",
              leadingIcon: Icons.smart_button_rounded),
          HomeListTileWidget(
              title: "List",
              subtitle: "Scrolling list layout",
              leadingIcon: Icons.list),
          HomeListTileWidget(
              title: "Card",
              subtitle: "Cards with rounded corners and decoration",
              leadingIcon: Icons.card_membership),
          HomeListTileWidget(
              title: "List Title",
              subtitle:
                  "A single fixed-height row that typically contains some text as well as a leading or trailing icon.",
              leadingIcon: Icons.list),
          HomeListTileWidget(
              title: "Alert",
              subtitle: "Alerts, SnackBar & Tooltip",
              leadingIcon: Icons.alarm),
          HomeListTileWidget(
              title: "Text Field",
              subtitle: "Text Field, Text Field Form",
              leadingIcon: Icons.text_fields),
          HomeListTileWidget(
              title: "Row & Column",
              subtitle:
                  "A widget that displays its children in a horizontal and vertical array",
              leadingIcon: Icons.table_rows),
          HomeListTileWidget(
              title: "Wrap & Chip",
              subtitle: "Wrap & Chip",
              leadingIcon: Icons.wrap_text),
        ],
      ),
    );
  }
}
