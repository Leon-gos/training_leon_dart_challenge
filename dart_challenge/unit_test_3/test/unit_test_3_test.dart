import 'package:unit_test_3/unit_test_3.dart';
import 'package:test/test.dart';

void main() {
  test('test 1', () {
    expect(isPrime(1), false);
  });
  test('test 2', () {
    expect(isPrime(2), true);
  });
  test('test 3', () {
    expect(isPrime(3), true);
  });
  test('test 4', () {
    expect(isPrime(10), false);
  });
  test('test 5', () {
    expect(isPrime(17), true);
  });
  test('test 6', () {
    expect(isPrime(100), false);
  });
  test('test 7', () {
    expect(isPrime(111), false);
  });
}
