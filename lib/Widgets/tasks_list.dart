import 'package:flutter/material.dart';
import 'package:to_dos/Widgets/tasks_tile.dart';
// import 'package:to_dos/models/task.dart';
import 'package:provider/provider.dart';
import 'package:to_dos/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
      return TasksTile(
        taskTitle: Provider.of<TaskData>(context).tasks[index].taskname,
        isChecked: Provider.of<TaskData>(context).tasks[index].isDone,
        checkboxCallback: (bool checkboxState) {
          // setState(() {
          //   Provider.of<TaskData>(context).tasks[index].toggleDone();
          // });
        },
      );
    },
      itemCount: Provider.of<TaskData>(context).tasks.length,
    );
  }
}
