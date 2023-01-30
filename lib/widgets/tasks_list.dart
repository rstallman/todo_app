import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/widgets/task_tile.dart';
import '../models/task_data.dart';

class TasksList extends StatelessWidget {

  TasksList();

  @override
  Widget build(BuildContext context) {

    var taskData = context.watch<TaskData>();

    return ListView.builder(
      itemBuilder: (context, index) {
        final task = taskData.tasks[index];
        return TaskTile(
          isChecked: task.isDone,
          taskTitle: task.name,
          checkboxCallback: (bool? checkboxState) {
            taskData.updateTask(task);
          },
          longPressCallback: (){
            taskData.deleteTask(task);
          },
        );
      },
      itemCount: taskData.taskCount,
    );
  }
}
