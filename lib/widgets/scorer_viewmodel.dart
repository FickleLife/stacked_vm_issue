import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ScorerModel extends BaseViewModel {
  int score;

  ScorerModel(
    this.score,
  );

  Color getColor() {
    return Color.lerp(Colors.red, Colors.green, (score / 100).toDouble());
  }
}
