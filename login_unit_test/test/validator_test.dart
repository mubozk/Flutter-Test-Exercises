import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:login_unit_test/validator.dart';

// 1
void main() {
  test('validate for empty email', () {
    // ARRANGE & ACT
    var result = Validator.validateEmail('');
    // ASSERT
    expect(result, 'Required Field');
  });
}
