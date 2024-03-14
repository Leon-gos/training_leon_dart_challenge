import 'dart:io';
import 'dart:math';

void playGame() {
  List<int> generatedNum = [];
  List<int> userGuess = [];
  String userGuessString = "";

  generatedNum = generateNumber();

  while (true) {
    stdout.write("Type your guess: ");
    userGuessString = stdin.readLineSync().toString();
    try {
      userGuess = stringToListNum(userGuessString);
      if (checkResult(generatedNum, userGuess)) {
        stdout.write("Do you want to continue (y/n)?");
        if (stdin.readLineSync().toString() != "y") {
          break;
        }
        else {
          generatedNum = generateNumber();
        }
      }
    } catch (e) {
      print("Invalid input");
    }
  }
}

bool checkResult(List<int> generatedNum, List<int> userGuess) {
  int cows = 0;
  int bulls = 0;
  for (int i = 0; i < userGuess.length; i++) {
    if (userGuess[i] == generatedNum[i]) {
      cows++;
    } else if (generatedNum.contains(userGuess[i])) {
      bulls++;
    }
  }
  if (cows == generatedNum.length) {
    print("You win!!!");
    return true;
  } else {
    print("Cows: $cows");
    print("Bulls: $bulls");
    return false;
  }
}

List<int> generateNumber() {
  var random = Random();
  List<int> list = [];

  list.add(random.nextInt(9) + 1);
  list.add(random.nextInt(10));
  list.add(random.nextInt(10));
  list.add(random.nextInt(10));

  print("New number generated");

  return list;
}

List<int> stringToListNum(String userGuessString) {
  if (userGuessString.length != 4) {
    throw Exception("Invalid input");
  }

  List<int> list = [];

  for (int i = 0; i < userGuessString.length; i++) {
    try {
      list.add(int.parse(userGuessString[i]));
    } catch (e) {
      rethrow;
    }
  }

  return list;
}
