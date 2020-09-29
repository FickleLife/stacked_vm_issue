import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'scorer_viewmodel.dart';

class Scorer extends StatelessWidget {
  final int score;

  Scorer({
    this.score,
  });

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ScorerModel>.reactive(
      builder: (context, model, child) => Container(
        padding: EdgeInsets.all(15),
        color: model.getColor(),
        child: Text(score.toString()),
      ),
      viewModelBuilder: () => ScorerModel(score),
    );
  }
}
