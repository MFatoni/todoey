import 'package:flutter/material.dart';
import 'package:todoey/model/taks.dart';
import 'package:todoey/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;
  TasksList({
    required this.tasks,
  });
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return (TaskTile(
          taskTitle: widget.tasks[index].name,
          isChecked: widget.tasks[index].isDone,
          checkboxCallback: (bool? checkboxState) {
            setState(() {
              widget.tasks[index].toggleDone();
            });
          },
        ));
      },
      itemCount: widget.tasks.length,
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:todoey/model/taks.dart';
// import 'package:todoey/widgets/task_tile.dart';

// class TasksList extends StatefulWidget {
//   _TaskListState createState() => _TaskListState();
// }

// class _TaskListState extends State<TasksList> {
//   List<Task> tasks = [
//     Task(name: 'Buy milk'),
//     Task(name: 'Buy eggs'),
//     Task(name: 'Buy bread'),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemBuilder: (context, index) {
//         return (TaskTile(
//           taskTitle: tasks[index].name,
//           isChecked: tasks[index].isDone,
//           checkboxCallback: (bool? checkboxState) {
//             setState(() {
//               tasks[index].toggleDone();
//             });
//           },
//         ));
//       },
//       itemCount: tasks.length,
//     );
//   }
// }
