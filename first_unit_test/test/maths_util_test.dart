import 'dart:math';
import 'package:first_unit_test/maths_util.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('check for two number addition', () {
    //ARRANGE
    var a = 10;
    var b = 10;

    //ACT
    var sum = add(a, b);

    //ASSERT
    expect(sum, 20);

  });
}
