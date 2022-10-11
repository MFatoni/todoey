import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  void Function(bool?) checkboxCallback;
  VoidCallback longPressCallback;
  TaskTile({
    required this.taskTitle,
    required this.isChecked,
    required this.checkboxCallback,
    required this.longPressCallback,
  });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: checkboxCallback,
      ),
    );
  }
}




// import 'package:flutter/material.dart';

// class TaskTile extends StatefulWidget {
//   @override
//   _TaskTileState createState() => _TaskTileState();
// }

// class _TaskTileState extends State<TaskTile> {
//   bool isChecked = false;
//   void checkboxCallback(bool? checkboxState) => {
//         setState(
//           () {
//             isChecked = checkboxState!;
//           },
//         )
//       };

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       title: Text(
//         'This is a task.',
//         style: TextStyle(
//           decoration: isChecked ? TextDecoration.lineThrough : null,
//         ),
//       ),
//       trailing: TaskCheckbox(
//         checkboxState: isChecked,
//         toggleCheckboxState: checkboxCallback,
//       ),
//     );
//   }
// }

// class TaskCheckbox extends StatelessWidget {
//   final bool checkboxState;
//   final void Function(bool?) toggleCheckboxState;

//   TaskCheckbox(
//       {required this.checkboxState, required this.toggleCheckboxState});

//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       value: checkboxState,
//       activeColor: Colors.lightBlueAccent,
//       onChanged: toggleCheckboxState,
//     );
//   }
// }
