import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_foytingo/models/task_data.dart';

class AddTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskTitle;

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.teal,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold),
            ),
            TextField(
              onChanged: (newText) {
                newTaskTitle = newText;
              },
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10.0),
            FlatButton(
              onPressed: () {
                Provider.of<TaskData>(context, listen: false)
                    .addTask(newTaskTitle);
                Navigator.pop(context);
              },
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.teal,
            )
          ],
        ),
      ),
    );
  }
}
