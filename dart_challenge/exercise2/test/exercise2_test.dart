import 'package:exercise2/exercise2.dart';
import 'package:test/test.dart';

void main() {
  test('test 1', () {
    expect(findDivisors(26), [1, 2, 13, 26]);
  });
  test('test 2', () {
    expect(findDivisors(5), [1, 5]);
  });
  test('test 3', () {
    expect(findDivisors(1), [1]);
  });
  test('test 4', () {
    expect(findDivisors(50), [1, 2, 5, 10, 25, 50]);
  });
}
