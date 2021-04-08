import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  final Function longpressCallback;

  TasksTile({this.isChecked,this.taskTitle,this.checkboxCallback,this.longpressCallback});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longpressCallback,
      title: Text( taskTitle,style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough : null),),
      trailing:  Checkbox(
        activeColor: Colors.teal,
          value: isChecked,
        onChanged: checkboxCallback,
    ),
    );
}
}





