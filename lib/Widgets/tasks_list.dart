import 'package:flutter/material.dart';
import 'package:to_dos/Widgets/tasks_tile.dart';
import 'package:to_dos/models/task.dart';

class TasksList extends StatefulWidget {

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {

  List<Task> tasks = [
    Task(taskname: 'flutter Section 12 learning',),
    Task(taskname: 'yoga',),
    Task(taskname: 'write 3 lines',),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
      return TasksTile(
        taskTitle: tasks[index].taskname,
        isChecked: tasks[index].isDone,
        checkboxCallback: (bool checkboxState) {
          setState(() {
            tasks[index].toggleDone();
          });
        },
      );
    },
      itemCount: tasks.length,
    );
  }
}
