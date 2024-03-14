import 'dart:io';
import 'dart:math';

void playGame() {
  List<String> selections = ["r", "p", "s", "e"];
  Map<String, String> selectionsMap = {
    "r": "Rock",
    "p": "Paper",
    "s": "Scissor",
    "e": "Exit"
  };
  String userSelection = "";
  String machineSelection = "";
  int totalScore = 0;
  int roundScrore = 0;
  while(true) {
    print("------------------------------");
    print("Type r for Rock, p for Paper, s for Scissor, e for Exit");
    stdout.write("Your selection: ");
    userSelection = stdin.readLineSync()!;
    print("Your selection: ${selectionsMap[userSelection]}");
    if (!selections.contains(userSelection)){
      print("Wrong selection");
    }
    else if (userSelection == selections[3]){
      print("Total score: $totalScore");
      break;
    }
    else {
      machineSelection = selections[Random().nextInt(3)];
      print("Machine selection: ${selectionsMap[machineSelection]}");
      roundScrore = getScore(userSelection, machineSelection);
      totalScore += roundScrore;
      if(roundScrore == 1){
        print("You win");
      }
      else if (roundScrore == -1){
        print("You lose");
      }
      else {
        print("Draw match");
      }
    }
  }
}

int getScore(String userSelection, String machineSelection) {
  if (userSelection.toLowerCase() == "r") {
    if(machineSelection == "s") {
      return 1;
    }
    else if (machineSelection == "p") {
      return -1;
    }
  }
  else if (userSelection.toLowerCase() == "p") {
    if(machineSelection == "r") {
      return 1;
    }
    else if (machineSelection == "s") {
      return -1;
    }
  }
  else if (userSelection.toLowerCase() == "s") {
    if(machineSelection == "p"){
      return 1;
    }
    else if (machineSelection == "r") {
      return -1;
    }
  }
  return 0;
}
