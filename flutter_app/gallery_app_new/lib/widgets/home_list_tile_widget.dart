import 'package:flutter/material.dart';

class HomeListTileWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData leadingIcon;

  const HomeListTileWidget(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.leadingIcon});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          child: Icon(leadingIcon),
        ),
        Expanded(
            child: Column(
          children: [
            ListTile(
              title: Text(
                title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(subtitle),
              contentPadding: const EdgeInsets.all(0),
            ),
            const Divider(),
          ],
        ))
      ],
    );
  }
}
