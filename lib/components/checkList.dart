import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/taskData.dart';
import 'checkListItem.dart';

class CheckList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, TaskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = TaskData.tasks[index];
            return CheckListItem(
                label: task.name,
                isChecked: task.isDone,
                changeState: () {
                  TaskData.updateTask(task);
                },
                deleteTask: () {
                  TaskData.deleteTask(task);
                });
          },
          itemCount: TaskData.getTasksCount(),
        );
      },
    );
  }
}
