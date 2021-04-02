import 'package:flutter/material.dart';
import 'package:to_dos/Widgets/tasks_list.dart';


class TasksScreen extends StatelessWidget {

  // ignore: missing_return
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        child: Icon(Icons.add),
        onPressed: (){
          showModalBottomSheet(context: context, builder: (context) => Container());
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
                padding: EdgeInsets.only(left: 30.0,top: 70.0,bottom: 30.0,right:30.0 ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:<Widget> [
                    CircleAvatar(
                        child: Icon(Icons.list, size: 30.0,color: Colors.teal,),
                      backgroundColor: Colors.white,
                      radius: 30.0,
                    ),
                    SizedBox(height: 10,),
                    Text('ToDo',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50.0,
                      fontWeight: FontWeight.w700,
                    ),
                    ),
                    Text(
                      '12 tasks',
                     style: TextStyle(
                       color: Colors.white,
                       fontSize: 18.0,
                     ),
                    ),
                  ],
                ),
              ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0) ,topRight:Radius.circular(20.0), ),
                ),
              child: TasksList(),
            ),
          ),
        ],
      ),
      );
  }
}




