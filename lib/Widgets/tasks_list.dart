import 'package:flutter/material.dart';
import 'package:to_dos/Widgets/tasks_tile.dart';
// import 'package:to_dos/models/task.dart';
import 'package:provider/provider.dart';
import 'package:to_dos/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context,taskData,child){
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TasksTile(
              taskTitle: task.taskname,
              isChecked: task.isDone,
              checkboxCallback: (bool checkboxState) {
               taskData.updateTask(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
