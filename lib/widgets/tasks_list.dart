import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/widgets/task_tile.dart';
import '../models/task_data.dart';

class TasksList extends StatelessWidget {

  TasksList();

  @override
  Widget build(BuildContext context) {

    var taskData = context.watch<TaskData>();
    var tasks = taskData.tasks;

    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          isChecked: tasks[index].isDone,
          taskTitle: tasks[index].name,
          checkboxCallback: (bool? checkboxState) {
            // setState(() {
            //   tasks[index].toggleDone();
            // });
          },
        );
      },
      itemCount: taskData.taskCount,
    );
  }
}
