import 'package:exercise2/exercise2.dart' as exercise2;

void main(List<String> arguments) {
  var num = 26;
  var divisors = exercise2.findDivisors(num);
  print("Divisors of $num are:");
  for (var divisor in divisors) {
    print(divisor);
  }
}
