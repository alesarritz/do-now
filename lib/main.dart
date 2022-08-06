import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';
import 'screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'models/taskData.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskData>(
        create: (context) => TaskData(),
        child: MaterialApp(
          theme: ThemeData(primaryColor: kLightBg),
          debugShowCheckedModeBanner: false,
          initialRoute: '/',
          routes: {'/': (context) => TaskScreen()},
        ));
  }
}
