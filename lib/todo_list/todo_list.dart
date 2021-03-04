import 'package:flutter_app/main.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';

import '../User.dart';
import 'todo_listmodel.dart';

class ToDoList extends StatefulWidget {
  ToDoList(BuildContext context);

  State<StatefulWidget> createState() => _ToDoListScreen();
}

class _ToDoListScreen extends State<ToDoList> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ToDoListModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: Stack(
          children: <Widget>[Text(getIt<User>().name)],
        ),
      ),
      viewModelBuilder: () => ToDoListModel(),
    );
  }
}
