import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_dos/models/task_data.dart';
import 'package:to_dos/screens/tasks_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}



