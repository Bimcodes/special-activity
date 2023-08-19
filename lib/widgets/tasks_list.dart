// ignore_for_file: use_key_in_widget_constructors
// The consumer widget used in this file helps to element repition of this code
//Provider.of<TaskData>(context).tasks[index].name
// The consumer widget wraps any downstream widget that needs to be updated when a particular data listen to changes
import 'package:flutter/material.dart';
import 'package:my_day/modules/task_data.dart';
import 'package:my_day/widgets/task_tile.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, taskData, Widget? child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              taskTitle: task.name,
              //Provider.of<TaskData>(context).tasks[index].name- Changing it to the above does the same work
              //widget.tasks[index].name,
              //This line of code above was to initialy get the task name and index
              // Widget refers to the stateful widget which gets the object when we create a new task list
              isChecked: task.isDone,
              checkboxCallback: (checkboxState) {
                taskData.updateTask(task);
              },
              longpressCallbak: () {
                taskData.deleteTask(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
