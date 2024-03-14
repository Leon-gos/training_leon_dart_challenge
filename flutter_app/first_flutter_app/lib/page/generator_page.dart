import 'package:first_flutter_app/cubit/app_cubit.dart';
import 'package:first_flutter_app/widget/big_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GeneratorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var cubit = context.read<AppCubit>();

    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        IconData icon;
        if (state.favorites.contains(state.current)) {
          icon = Icons.favorite;
        } else {
          icon = Icons.favorite_border;
        }

        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BigCard(pair: state.current),
              SizedBox(height: 10),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      cubit.toggleFavorite();
                    },
                    icon: Icon(icon),
                    label: Text('Like'),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      cubit.getNext();
                    },
                    child: Text('Next'),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
