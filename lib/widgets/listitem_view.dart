import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'package:stacked_vm_issue/model/item.dart';
import 'package:stacked_vm_issue/widgets/scorer_view.dart';

import 'listitem_viewmodel.dart';

class ListItem extends StatelessWidget {
  Thing data;

  ListItem({
    this.data,
  });

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ListItemModel>.reactive(
      builder: (context, model, child) => ListTile(
        title: Text(data.title),
        leading: Scorer(score: data.score),
      ),
      viewModelBuilder: () => ListItemModel(),
    );
  }
}
