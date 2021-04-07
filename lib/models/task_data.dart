import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:to_dos/models/task.dart';

class TaskData extends ChangeNotifier {

  List<Task> tasks = [
    Task(taskname: 'flutter Section 12 learning',),
    Task(taskname: 'yoga',),
    Task(taskname: 'write 3 lines',),
  ];

  int get taskCount {
    return tasks.length;

  }
  void addTask( String newTaskTitle){
    final task = Task(taskname: newTaskTitle,);
    tasks.add(task);
    notifyListeners();
  }
}
