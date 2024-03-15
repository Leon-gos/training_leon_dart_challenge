import 'package:english_words/english_words.dart';
import 'package:equatable/equatable.dart';

class AppState extends Equatable{
  final WordPair current;
  final List<WordPair> favorites;

  const AppState({required this.current, required this.favorites});

  @override
  List<Object?> get props => [current, favorites];

  AppState copyWith({
    WordPair? current,
    List<WordPair>? favorites,
  }) {
    return AppState(
      current: current ?? this.current,
      favorites: favorites ?? this.favorites,
    );
  }
}
