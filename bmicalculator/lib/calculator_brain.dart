import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  late int height;
  late int weight;
  late double _bmi;
  String calculateBmi() {
    _bmi = (weight / pow(height / 100, 2));
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi > 25) {
      return 'OVERWEIGHT';
    } else if (_bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getInterPretation() {
    if (_bmi > 25) {
      return 'Oops, You have a higher than normal body weight. Try to exercise more';
    } else if (_bmi > 18.5) {
      return 'CHEERS, you have a normal body weight';
    } else {
      return 'ops, You are UNDERWEIGHT..You can Eat more';
    }
  }
}
