import 'package:flutter/material.dart';
import '../constants.dart';
import '../models/task.dart';

class CheckListItem extends StatelessWidget {
  CheckListItem(
      {required this.label,
      required this.changeState,
      required this.isChecked,
      required this.deleteTask});

  final String label;
  final Function() changeState;
  final Function() deleteTask;
  final bool isChecked;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: GestureDetector(
                onLongPress: deleteTask,
                child: Text(
                  label,
                  style: TextStyle(
                      fontSize: 22,
                      decoration: isChecked
                          ? TextDecoration.lineThrough
                          : TextDecoration.none),
                ),
              ),
            ),
          ),
          GestureDetector(
              onTap: changeState,
              child: Icon(
                isChecked ? Icons.check_box : Icons.check_box_outline_blank,
                color: kDarkBg,
              ))
        ],
      ),
    );
  }
}
