import 'dart:math';

class CalculateBrain {
  CalculateBrain({required this.height, required this.weight});

  int height;
  int weight;

  late double _bmi;

  String calculate() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25.0) {
      return 'Overweight!';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight!';
    }
  }

  String getAdvice() {
    if (_bmi >= 25.0) {
      return 'あなたは普通より太っています。もっと運動しましょう。';
    } else if (_bmi > 18.5) {
      return 'いいですね！このまま続けましょう！';
    } else {
      return 'あなたは普通より痩せています。もっと食べましょう。';
    }
  }
}
