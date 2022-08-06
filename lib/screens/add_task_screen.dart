import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:provider/provider.dart';
import '../models/taskData.dart';

class AddTaskScreen extends StatelessWidget {
  late String task;
  TextEditingController taskController = TextEditingController();

  void addAndGoBack(BuildContext context) {
    taskController.clear();
    Provider.of<TaskData>(context, listen: false).addTask(task);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 100),
      color: Color(0xFF3C5A57),
      child: Container(
        decoration: kContainerDec,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'ADD TASK',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 24.0,
                    color: kAlmostWhite),
              ),
            ),
            SizedBox(
              height: 5,
              child: Container(
                color: kLightBg,
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              child: TextField(
                autofocus: true,
                style: TextStyle(color: Colors.black87, fontSize: 20),
                decoration: kTextFieldDecoration,
                controller: taskController,
                onChanged: (value) {
                  task = value;
                },
                onSubmitted: (value) {
                  addAndGoBack(context);
                },
              ),
            ),
            Container(
              color: kDarkBg,
              alignment: Alignment.center,
              child: Container(
                width: 130,
                padding: EdgeInsets.only(bottom: 20),
                child: FloatingActionButton(
                    onPressed: () {
                      addAndGoBack(context);
                    },
                    backgroundColor: kLightBg,
                    foregroundColor: kAlmostWhite,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: addButtonText),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
