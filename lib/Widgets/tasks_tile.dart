import 'package:flutter/material.dart';

class TasksTile extends StatefulWidget {
  @override
  _TasksTileState createState() => _TasksTileState();
}

class _TasksTileState extends State<TasksTile> {
  bool isChecked = false;


  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('name of task',style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough : null),),
      trailing: TaskCheckBox(checkboxState: isChecked,
          toggleCheckboxSate :
              (bool checkboxState){
              setState(() {
              isChecked = checkboxState;
               });
          } ,
    ),
    );
}
}

class TaskCheckBox extends StatelessWidget {
  final bool checkboxState;
  final Function toggleCheckboxSate;
  TaskCheckBox({ this.checkboxState,this.toggleCheckboxSate});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.teal,
      value: checkboxState,
      onChanged: toggleCheckboxSate,
    );
  }
}

