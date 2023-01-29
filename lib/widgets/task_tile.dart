import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  final String taskTitle;
  final bool isChecked;
  final void Function(bool? )  checkboxCallback;

  TaskTile({required this.isChecked, required this.taskTitle , required this.checkboxCallback});



  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked! ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing:  Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}


