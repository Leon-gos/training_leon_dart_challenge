import 'package:first_flutter_app/cubit/app_cubit.dart';
import 'package:first_flutter_app/cubit/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavortitePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      buildWhen: (previous, current) =>
          previous.favorites != current.favorites,
      builder: (context, state) {
        if (state.favorites.isEmpty) {
          return Center(child: Text("Your favorite list is empty"));
        }
    
        return Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("You have ${state.favorites.length} favorites: "),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Text(state.favorites[index].asLowerCase),
                        Spacer(),
                        IconButton(
                            onPressed: () {
                              context
                                  .read<AppCubit>()
                                  .removeFavorite(state.favorites[index]);
                            },
                            icon: Icon(Icons.delete))
                      ],
                    );
                  },
                  itemCount: state.favorites.length,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}