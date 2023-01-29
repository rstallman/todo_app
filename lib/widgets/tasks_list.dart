import 'package:flutter/material.dart';
import 'package:todo_app/widgets/task_tile.dart';

import '../models/task.dart';

class TasksList extends StatefulWidget {
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: "buy mild"),
    Task(name: "buy eggs"),
    Task(name: "buy breads")
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            isChecked: tasks[index].isDone, taskTitle: tasks[index].name,
            checkboxCallback: (bool? checkboxState) {
              setState(() {
                tasks[index].toggleDone();
              });
            }
        );
      },
      itemCount: tasks.length,
    );
  }
}
