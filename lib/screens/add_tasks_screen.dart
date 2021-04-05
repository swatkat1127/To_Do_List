import 'package:flutter/material.dart';


class AddTasksScreen extends StatelessWidget {
  Function addTaskCallback;
  AddTasksScreen({this.addTaskCallback});

  @override
  Widget build(BuildContext context) {
    String newTaskTitle;

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0) ,topRight:Radius.circular(20.0), ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
         children: <Widget>[
           Text('Add Task',
           textAlign: TextAlign.center,
           style: TextStyle(
             fontSize: 30.0,
             color: Colors.teal,


           ),),
           TextField(
             autofocus: true,
             cursorColor: Colors.grey,
             textAlign: TextAlign.center,
             onChanged: (newText){
             newTaskTitle = newText;
           },
             decoration: InputDecoration(
               hintText: 'Type Text Here',
               focusedBorder: UnderlineInputBorder(
                   borderSide: BorderSide(color: Colors.teal),
               ),
           ),
           ),

           // SizedBox(height: 05.0,),

           TextButton(
             child: Text('Add'),
             onPressed: () {
              addTaskCallback(newTaskTitle);
               //add task to the list
             },
             style: TextButton.styleFrom(
                 primary: Colors.white,
                 backgroundColor: Colors.teal,
                 textStyle: TextStyle(fontSize: 15,),
           ),
           ),
         ],


        ),
        ),
    );
  }
}
