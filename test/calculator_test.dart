import 'package:flutter_test/flutter_test.dart';
import 'package:lab15/calculator.dart';

void main() {
  test('Перевірка розрахунку функції y = 10/(x^2-4)', () {
    final calculator = FunctionCalculator();

    // 1. Перевірка для x = 0
    expect(calculator.calculate(0), -2.5);

    // 2. Перевірка для x = 5
    expect(calculator.calculate(5), closeTo(0.4762, 0.0001));
  });
}