// ignore_for_file: use_key_in_widget_constructors, sized_box_for_whitespace, avoid_print, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:project14/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String? task;
    return Container(
      color: const Color.fromARGB(255, 2, 89, 139),
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Add Task',
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 35,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                textAlign: TextAlign.center,
                autofocus: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  task = value;
                },
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 50,
                width: 400,
                child: ElevatedButton(
                  onPressed: () {
                    Provider.of<TaskData>(context, listen: false).addTask(task!);
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'add',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
