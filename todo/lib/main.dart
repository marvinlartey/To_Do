import 'package:flutter/material.dart';
import 'package:todo/views/home_view.dart';
import 'package:todo/views/tasks_page.dart';
import 'package:todo/views/login_page.dart';
import 'package:todo/views/create_todo_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TO DO',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TasksPage(),
    );
  }
}
