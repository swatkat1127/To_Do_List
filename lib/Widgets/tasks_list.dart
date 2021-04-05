import 'package:flutter/material.dart';
import 'package:to_dos/Widgets/tasks_tile.dart';
import 'package:to_dos/models/task.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;
  TasksList({this.tasks});
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
      return TasksTile(
        taskTitle: widget.tasks[index].taskname,
        isChecked: widget.tasks[index].isDone,
        checkboxCallback: (bool checkboxState) {
          setState(() {
            widget.tasks[index].toggleDone();
          });
        },
      );
    },
      itemCount: widget.tasks.length,
    );
  }
}
