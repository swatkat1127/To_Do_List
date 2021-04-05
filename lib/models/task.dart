class Task {
  final String taskname ;
  bool isDone;

  Task({this.taskname,this.isDone = false});

  void toggleDone() {
    isDone = !isDone;

  }
}