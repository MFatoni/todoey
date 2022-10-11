import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/model/taks.dart';
import 'package:todoey/model/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;
    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.all(30),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  newTaskTitle = value;
                }),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Colors.lightBlueAccent,
                ),
              ),
              child: const Text('Add'),
              onPressed: () {
                Provider.of<TaskData>(context, listen: false)
                    .addTask(newTaskTitle!);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
