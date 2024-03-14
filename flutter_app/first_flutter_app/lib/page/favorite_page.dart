import 'package:first_flutter_app/main.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavortitePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    if (appState.favorites.isEmpty) {
      return Text("Your favorite list is empty");
    }

    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("You have ${appState.favorites.length} favorites: "),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Text(appState.favorites[index].asLowerCase),
                    Spacer(),
                    IconButton(onPressed: () {
                      appState.removeFavorite(appState.favorites[index]);
                    }, icon: Icon(Icons.delete))
                  ],
                );
              },
              itemCount: appState.favorites.length,
            ),
          ),
        ],
      ),
    );
  }
}