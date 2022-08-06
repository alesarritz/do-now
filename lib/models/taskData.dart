import 'package:flutter/material.dart';
import '../models/task.dart';
import 'package:collection/collection.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [];

  void addTask(String label) {
    _tasks.add(Task(name: label));
    notifyListeners();
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int getTasksCount() {
    return _tasks.length;
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
