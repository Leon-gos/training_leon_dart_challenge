import 'dart:io';

import 'package:exercise3/exercise3.dart' as exercise3;

void main(List<String> arguments) {
  var a = [1, 1, 2, 3, 5, 8, 89, 13, 21, 34, 55];
  var b = [1, 2, 3, 4, 5, 6, 10, 7, 8, 9, 11, 12, 13];
  var intersect = exercise3.intersectList(a, b);
  stdout.write("Intersection of a and b is [");
  for (int i in intersect) {
    stdout.write("$i, ");
  }
  print("]");
}
