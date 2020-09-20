import 'dart:math';

class BmiBrain {
  final double height;
  final double weight;

  double _bmi;

  BmiBrain({this.height, this.weight});

  String getBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi > 25) {
      return 'overweight';
    } else if (_bmi > 18.5) {
      return 'normal';
    } else {
      return 'underweight';
    }
  }

  String getInterpretation() {
    if (_bmi > 25) {
      return 'You have a higher body weight than normal. You should exercise more.';
    } else if (_bmi > 18.5) {
      return 'You have normal body weight. Good Job!!';
    } else {
      return 'You have a lower body weight than normal. You should eat more. ';
    }
  }
}
