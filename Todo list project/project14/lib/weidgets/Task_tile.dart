// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String task;
  final Function(bool?) checkboxCallback;
  final Function() longPress;
  TaskTile(
      {required this.isChecked,
      required this.task,
      required this.checkboxCallback,
      required this.longPress});

  //  void checkboxCallback(bool? checkboxState) {
  //   setState(() {
  //     isChecked = checkboxState ?? true;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: longPress,
        title: Text(
          task,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: checkboxCallback,
          //(newValue) {
          //   checkboxCallback(newValue);
          // } // toggleCheckboxState,
          // checkboxState = newValue!;
          //)
          //TaskCheckBox(
          //   checkboxState: isChecked,
          //   toggleCheckboxState: checkboxCallback,
          // ),
        ));
  }
}

// class TaskCheckBox extends StatelessWidget {
//   final bool checkboxState;
//   final Function(bool?) toggleCheckboxState;
//   TaskCheckBox(
//       {required this.checkboxState, required this.toggleCheckboxState});
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       activeColor: Colors.lightBlueAccent,
//       value: checkboxState,
//       onChanged: toggleCheckboxState,
//       // checkboxState = newValue!;
//     );
//   }
// }
