import 'dart:io';
import 'dart:math';

void playGame() {
  int tryTime = 0;
  int userGuess = 0;
  int autogenNum = 0;
  bool isContinue = true;
  while (isContinue) {
    print("------------------------------");
    autogenNum = Random().nextInt(100) + 1;
    tryTime = 0;
    print("New number generated");
    while (true) {
      try {
        stdout.write("Type a number to guess: ");
        userGuess = int.parse(stdin.readLineSync().toString());
        tryTime += 1;
        if (userGuess == autogenNum) {
          print("You are correct!!!");
          print("You have tried $tryTime times");
          stdout.write("Do you want to continue (y/n)? ");
          if (stdin.readLineSync().toString().toLowerCase() != "y") {
            isContinue = false;
          }
          break;
        }
        else if (userGuess > autogenNum) {
          print("You are higher");
        }
        else {
          print("You are lower");
        }
      } catch (e) {
        print("Not a number");
      }
    }
  }
}
