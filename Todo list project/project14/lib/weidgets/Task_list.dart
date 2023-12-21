// ignore_for_file: use_key_in_widget_constructors, file_names, depend_on_referenced_packages

import 'Task_tile.dart';
import 'package:flutter/material.dart';
import 'package:project14/models/task_data.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task1 = taskData.tasks[index];
            return TaskTile(
              //task: Provider.of<TaskData>(context).tasks[index].name,
              task: task1.name,
              isChecked: task1.isDone,
              checkboxCallback: (bool? checkboxState) {
                taskData.update(task1);
                // setState(() {
                //    Provider.of<TaskData>(context).tasks[index].toggleDone();
                // });
              },
              longPress: () {
                taskData.delete(task1);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
