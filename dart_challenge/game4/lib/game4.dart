import 'dart:io';
import 'dart:math';

void playGame() {
  String secrectWord = generateSecrectWord();
  String userGuessList = getHint(secrectWord);
  String userGuessChar = "";

  print("New word generated");
  checkEndGame(userGuessList, secrectWord);

  while (true) {
    stdout.write("Type your guess letter: ");
    userGuessChar = stdin.readLineSync().toString();
    if (charIsContained(userGuessChar, secrectWord)) {
      userGuessList += userGuessChar;
    }
    if (checkEndGame(userGuessList, secrectWord)) {
      print("You win!!!");
      break;
    }
  }
}

bool checkEndGame(String userGuessList, String secrectWord) {
  int notFound = 0;
  for (int i = 0; i < secrectWord.length; i++) {
    if (userGuessList.toUpperCase().contains(secrectWord[i])) {
      stdout.write(secrectWord[i]);
    } else {
      stdout.write("_");
      notFound++;
    }
    stdout.write(" ");
  }
  print("");
  return notFound < 1;
}

bool charIsContained(String userGuessChar, String secrectWord) {
  if (userGuessChar.length > 1) {
    return false;
  }
  return secrectWord.contains(userGuessChar.toUpperCase());
}

String getHint(String secrectWord) {
  return secrectWord[Random().nextInt(secrectWord.length)];
}

String generateSecrectWord() {
  String alphabet =
      "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
  int wordLength = Random().nextInt(3) + 3; // length in [3, 5]

  String word = "";
  for (int i = 0; i < wordLength; i++) {
    word += alphabet[Random().nextInt(alphabet.length)];
  }

  return word;
}
