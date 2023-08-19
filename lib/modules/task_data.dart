// ignore_for_file: list_remove_unrelated_type

import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:my_day/modules/task.dart';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(name: 'Buy gas'),
    Task(name: 'Buy garri'),
    Task(name: 'Buy rice'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

// Unmodifiable List view is a list whose element can't be changed from outside
  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(tasks);
    notifyListeners();
  }
}
