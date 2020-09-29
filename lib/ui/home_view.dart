import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_vm_issue/widgets/listitem_view.dart';

import 'home_viewmodel.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeModel>.reactive(
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text('Testing 123'),
        ),
        body: ListView.builder(
          itemCount: model.listOfStuff.length,
          itemBuilder: (context, i) {
            return ListItem(data: model.listOfStuff[i]);
          },
        ),
        floatingActionButton: IconButton(
          icon: Icon(
            Icons.add,
            color: Colors.blue,
          ),
          onPressed: () => model.addThing(),
        ),
      ),
      viewModelBuilder: () => HomeModel(),
    );
  }
}
