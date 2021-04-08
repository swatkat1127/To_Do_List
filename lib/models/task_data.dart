import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:to_dos/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {

  List<Task> _tasks = [
    Task(taskname: 'flutter Section 12 learning',),
    Task(taskname: 'yoga',),
    Task(taskname: 'write 3 lines',),
  ];

  UnmodifiableListView<Task> get tasks {
     return UnmodifiableListView(_tasks);
  }


  int get taskCount {
    return _tasks.length;

  }
  void addTask( String newTaskTitle){
    final task = Task(taskname: newTaskTitle,);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask( Task task){
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }
}
