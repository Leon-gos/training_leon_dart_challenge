import 'package:english_words/english_words.dart';
import 'package:first_flutter_app/cubit/app_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit(): super(AppState(current: WordPair.random(), favorites: []));

  void getNext() {
    emit(state.copyWith(current: WordPair.random()));
  }

  void toggleFavorite() {
    List<WordPair> favorites = List.from(state.favorites);
    if (favorites.contains(state.current)) {
      favorites.remove(state.current);
    } 
    else {
      favorites.add(state.current);
    }
    emit(state.copyWith(favorites: favorites));
  }

  void removeFavorite(WordPair wordPair) {
    state.favorites.remove(wordPair);
    emit(state.copyWith(favorites: state.favorites));
  }
}