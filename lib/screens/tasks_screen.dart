import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/header.dart';
import '../components/checkList.dart';
import 'add_task_screen.dart';

class TaskScreen extends StatelessWidget {
  CheckList checkList = CheckList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightBg,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Header(),
            Expanded(
              child: Container(
                  padding: EdgeInsets.fromLTRB(50, 40, 50, 15),
                  decoration: kContainerDec.copyWith(color: kAlmostWhite),
                  child: checkList),
            ),
            Container(
              color: kAlmostWhite,
              alignment: Alignment.center,
              child: Container(
                width: 130,
                padding: EdgeInsets.only(bottom: 20),
                child: FloatingActionButton(
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        builder: (context) => AddTaskScreen(),
                      );
                    },
                    backgroundColor: kDarkBg,
                    foregroundColor: kAlmostWhite,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: addButtonText),
              ),
            )
          ],
        ),
      ),
    );
  }
}
