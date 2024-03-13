import 'package:unit_test_4/unit_test_4.dart';
import 'package:test/test.dart';

void main() {
  test('test 1', () {
    expect(isPasswordValid("abc"), false);
  });
  test('test 2', () {
    expect(isPasswordValid("abcdef"), false);
  });
  test('test 3', () {
    expect(isPasswordValid("abcde1"), false);
  });
  test('test 4', () {
    expect(isPasswordValid("123456@"), false);
  });
  test('test 5', () {
    expect(isPasswordValid("abcaadsf@"), false);
  });
  test('test 6', () {
    expect(isPasswordValid("abcdef1@"), true);
  });
}
