import 'dart:math';

import 'package:stacked/stacked.dart';
import 'package:stacked_vm_issue/model/item.dart';

class HomeModel extends BaseViewModel {
  get listOfStuff => stuff.reversed
      .toList(); // reversing the list causes the viewmodel to not run?

  addThing() {
    Thing thingo = Thing(
      number: 8 + Random().nextInt(100 - 8),
      title: _randomString(20),
      score: 0 + Random().nextInt(100 - 0),
    );

    stuff.add(thingo);
    notifyListeners();
  }

  String _randomString(int length) {
    var rand = new Random();
    var codeUnits = new List.generate(length, (index) {
      return rand.nextInt(33) + 89;
    });

    return new String.fromCharCodes(codeUnits);
  }

  List<Thing> stuff = [
    Thing(
      number: 1,
      title: 'No 1',
      score: 0,
    ),
    Thing(
      number: 2,
      title: 'No 2',
      score: 25,
    ),
    Thing(
      number: 3,
      title: 'No 3',
      score: 50,
    ),
    Thing(
      number: 4,
      title: 'No 4',
      score: 75,
    ),
    Thing(
      number: 5,
      title: 'No 5',
      score: 100,
    ),
  ];
}
