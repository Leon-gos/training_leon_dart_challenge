import 'package:english_words/english_words.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppState {
  var current = WordPair.random();
  var favorites = <WordPair>[];

  copyWith({current, favorites}){
    var newState = AppState();
    newState.current = current ?? this.current;
    newState.favorites = favorites ?? this.favorites;
    return newState;
  }
}

class AppCubit extends Cubit<AppState> {
  AppCubit(super.initialState);

  void getNext() {
    emit(state.copyWith(current: WordPair.random()));
  }

  void toggleFavorite() {
    if (state.favorites.contains(state.current)) {
      state.favorites.remove(state.current);
    } else {
      state.favorites.add(state.current);
    }
    emit(state.copyWith());
  }

  void removeFavorite(WordPair wordPair) {
    state.favorites.remove(wordPair);
    emit(state.copyWith());
  }
}