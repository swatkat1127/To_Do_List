import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('name of task'),
      trailing: Checkbox(value: false,),
    );
  }
}

