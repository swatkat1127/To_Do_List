import 'package:flutter/material.dart';
import 'package:to_dos/Widgets/tasks_tile.dart';

class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TasksTile(),
        TasksTile(),
      ],
    );
  }
}
