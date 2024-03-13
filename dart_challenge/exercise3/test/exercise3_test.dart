import 'package:exercise3/exercise3.dart';
import 'package:test/test.dart';

void main() {
  test('test 1', () {
    var a = [1, 1, 2, 3, 5, 8, 89, 13, 21, 34, 55];
    var b = [1, 2, 3, 4, 5, 6, 10, 7, 8, 9, 11, 12, 13];
    var result = [1, 2, 3, 5, 8, 13];
    expect(intersectList(a, b), result);
  });
  test("test 2", () {
    var a = [1, 1, 2, 2, 5, 8, 13, 21, 34, 55];
    var b = [1, 3, 4, 5, 6, 10, 7, 8, 9, 11, 12, 13, 55];
    var result = [1, 5, 8, 13, 55];
    expect(intersectList(a, b), result);
  });
}
