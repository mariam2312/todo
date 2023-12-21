import 'package:flutter/foundation.dart';
import 'task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(isDone: false, name: 'buy'),
    Task(isDone: true, name: 'sale'),
    Task(isDone: false, name: 'eat')
  ];
  int get taskCount {
    return _tasks.length;
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addTask(String taskTitle) {
    final task = Task(isDone: false, name: taskTitle);
    _tasks.add(task);
    //to update data
    notifyListeners();
  }

  void update(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void delete(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
