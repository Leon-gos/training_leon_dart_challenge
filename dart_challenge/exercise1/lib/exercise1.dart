void printSquare(int size) {
  if (size < 1) {
    print("Size must be greater than 0");
    return;
  }
  String oddLine = getOddLine(size);
  String evenLine = getEvenLine(size);
  for (int i=0; i<=size*2; i++) {
    print(i%2 == 0 ? evenLine : oddLine);
  }
}

String getEvenLine(int size) {
  String line = "";
  for(int i=0; i<=size*2; i++) {
    if (i%2==0) {
      line += " ";
    }
    else {
      line += "---";
    }
  }
  return line;
}

String getOddLine(int size) {
  String line = "";
  for(int i=0; i<=size*2; i++) {
    if (i%2==0) {
      line += "|";
    }
    else {
      line += "   ";
    }
  }
  return line;
}
