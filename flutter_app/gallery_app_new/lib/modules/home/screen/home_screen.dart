import 'package:flutter/material.dart';
import 'package:gallery_app_new/router/route_name.dart';
import 'package:gallery_app_new/widgets/home_list_tile_widget.dart';
import 'package:go_router/go_router.dart';

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
        children: [
          HomeListTileWidget(
            title: "Cupertino",
            subtitle:
                "Beautiful and high-fidety widgets for iOS design language",
            leadingIcon: Icons.phone_android,
            onClick: () {
              context.push(AppRouteNames.cupertino.path);
            },
          ),
          HomeListTileWidget(
            title: "Typography",
            subtitle: "All of the predefinded text style",
            leadingIcon: Icons.text_fields,
            onClick: () {
              context.push(AppRouteNames.richText.path);
            },
          ),
          const HomeListTileWidget(
              title: "Bottom app bar",
              subtitle: "Bottom application bar",
              leadingIcon: Icons.more_vert_rounded),
          HomeListTileWidget(
            title: "Button",
            subtitle:
                "RaisedButton, FlatButton, DropdownButton, FloatingActionButton, IconButton, InkWell, RawMaterialButton",
            leadingIcon: Icons.smart_button_rounded,
            onClick: () {
              context.push(AppRouteNames.button.path);
            },
          ),
          const HomeListTileWidget(
              title: "List",
              subtitle: "Scrolling list layout",
              leadingIcon: Icons.list),
          const HomeListTileWidget(
              title: "Card",
              subtitle: "Cards with rounded corners and decoration",
              leadingIcon: Icons.card_membership),
          const HomeListTileWidget(
              title: "List Title",
              subtitle:
                  "A single fixed-height row that typically contains some text as well as a leading or trailing icon.",
              leadingIcon: Icons.list),
          const HomeListTileWidget(
              title: "Alert",
              subtitle: "Alerts, SnackBar & Tooltip",
              leadingIcon: Icons.alarm),
          HomeListTileWidget(
            title: "Text Field",
            subtitle: "Text Field, Text Field Form",
            leadingIcon: Icons.text_fields,
            onClick: () {
              context.push(AppRouteNames.textField.path);
            },
          ),
          HomeListTileWidget(
            title: "Row & Column",
            subtitle:
                "A widget that displays its children in a horizontal and vertical array",
            leadingIcon: Icons.table_rows,
            onClick: () {
              context.push(AppRouteNames.rowColumn.path);
            },
          ),
          HomeListTileWidget(
            title: "Wrap & Chip",
            subtitle: "Wrap & Chip",
            leadingIcon: Icons.wrap_text,
            onClick: () {
              context.push(AppRouteNames.wrapChip.path);
            },
          ),
          HomeListTileWidget(
            title: "Stack & Align",
            subtitle:
                "A widget that positions its children relative to the edges of its box",
            leadingIcon: Icons.wrap_text,
            onClick: () {
              context.push(AppRouteNames.stack.path);
            },
          ),
          HomeListTileWidget(
            title: "Container",
            subtitle:
                "A convenience widget that combines common painting, positioning, and sizing widgets.",
            leadingIcon: Icons.check_box_outline_blank,
            onClick: () {
              context.push(AppRouteNames.container.path);
            },
          ),
          HomeListTileWidget(
            title: "Bottom appbar",
            subtitle:
                "A material widget that's displayed at the bottom of an app for selecting among a small " 
                "number of views, typically between three and five.",
            leadingIcon: Icons.check_box_outline_blank,
            onClick: () {
              context.push(AppRouteNames.bottomAppbar.path);
            },
          ),
        ],
      ),
    );
  }
}
